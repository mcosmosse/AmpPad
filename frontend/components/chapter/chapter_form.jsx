import React from 'react';
import { Editor, EditorState, ContentState, RichUtils, convertToRaw, convertFromRaw } from 'draft-js';
import 'draft-js/dist/Draft.css';

class ChapterForm extends React.Component {
    constructor(props) {
        super(props);
        let contentState = ContentState.createFromText(this.props.chapter.body);
        let editorState = EditorState.createWithContent(contentState);
        // let editorState = EditorState.createEmpty();
        this.state = {
            chapter: this.props.chapter,
            editorState: editorState
        };
        this.onChange = this.onChange.bind(this);
        this.onUnderlineClick = this.onUnderlineClick.bind(this);
        this.onBoldClick = this.onBoldClick.bind(this);
        this.onItalicClick = this.onItalicClick.bind(this);
        this.handleKeyCommand = this.handleKeyCommand.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);
    }

    onChange(editorState) {
        // const blocks = convertToRaw(editorState.getCurrentContent()).blocks;
        // const value = blocks.map(block => (!block.text.trim() && '\n') || block.text).join('\n');
        const blocks = convertToRaw(editorState.getCurrentContent()).blocks;
        const mappedBlocks = blocks.map(
          block => (!block.text.trim() && "\n") || block.text
        );
    
        let newText = "";
        for (let i = 0; i < mappedBlocks.length; i++) {
          const block = mappedBlocks[i];
    
          // handle last block
          if (i === mappedBlocks.length - 1) {
            newText += block;
          } else {
            // otherwise we join with \n, except if the block is already a \n
            if (block === "\n") newText += block;
            else newText += block + "\n";
          }
        }
        this.setState({
            editorState,
            chapter: {...this.state.chapter, body: newText}
        })
    }

    handleKeyCommand(command, editorState) {
        const newState = RichUtils.handleKeyCommand(editorState, command)
        if (newState) {
            this.onChange(newState);
            return 'handled';
        }
        return 'not-handled';
    }

    onUnderlineClick() {
        this.onChange(RichUtils.toggleInlineStyle(this.state.editorState, 'UNDERLINE'));
    }
    
    onBoldClick() {
        this.onChange(RichUtils.toggleInlineStyle(this.state.editorState, 'BOLD'));
    }
    
    onItalicClick() {
        this.onChange(RichUtils.toggleInlineStyle(this.state.editorState, 'ITALIC'));
    }

    updateTitle() {
        return e => {
            this.setState({ chapter: {...this.state.chapter, title: e.currentTarget.value }})
        }
    }

    handleSubmit(e) {
        e.preventDefault();
        return this.props.action(this.state.chapter)
                .then(res => this.props.history.push(`/stories/${this.props.story.id}/${this.props.chapter.id}`));
    }

    render() {
        if (this.state.chapter === undefined) {
            return null;
        } else {
            return (
                <div className='chapter-form'>
                    <div className='chapter-title-form' >
                        <input 
                        type="text"
                        value={this.state.chapter.title}
                        onChange={this.updateTitle()}/>
                        <button onClick={this.handleSubmit}>Publish</button>
                    </div>
                    <div>
                        <button onClick={this.onBoldClick}><b>B</b></button>
                        <button onClick={this.onItalicClick}><em>I</em></button>
                        <button onClick={this.onUnderlineClick}>U</button>
                    </div>
                    <Editor
                        editorState={this.state.editorState}
                        onChange={this.onChange}
                        placeholder='Type your text'
                        handleKeyCommand={this.handleKeyCommand}
                    />
                </div>
            );
        }
        // things to do:
        // DONE!: change chapter title
        // DONE!: make sure chapter from persists on refresh
        // DONE!: see react practice test, don't ever let the form render until the state is included
        // fix problems with new lines multiplying and saving
        // display new lines in chapter show
        // sometimes chapter form doesn't render correctly: another chapter is being added to the state
        // when a story is fetched, probably a reducer problem
    }
}

export default ChapterForm;