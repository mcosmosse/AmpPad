import { connect } from 'react-redux';
import React from 'react';
import ChapterForm from './chapter_form';
import { fetchChapter, updateChapter } from '../../actions/chapter_actions';
import { fetchStory } from '../../actions/story_actions';
import { orderChapters } from '../../reducers/selectors';

const mSTP = (state, ownProps) => ({
    chapter: state.entities.chapters[ownProps.match.params.chapterId],
    chapters: orderChapters(state, ownProps.match.params.storyId),
    story: Object.values(state.entities.stories)[0],
    formType: 'Update Chapter'
});

const mDTP = dispatch => ({
    action: (chapter) => dispatch(updateChapter(chapter)),
    fetchChapter: (id) => dispatch(fetchChapter(id)),
    fetchStory: (id) => dispatch(fetchStory(id))
});

class EditChapterForm extends React.Component {
    
    componentDidMount() {
        this.props.fetchStory(this.props.match.params.storyId).then(
            () => this.props.fetchChapter(this.props.match.params.chapterId)
        );
    }

    render() {
        const { action, formType, history, chapter, story, chapters } = this.props;

        if (!story || chapter.body === undefined) return null;

        return (
            <ChapterForm 
                action={action}
                formType={formType}
                chapter={chapter}
                chapters={chapters}
                history={history}
                story={story}
            />
        )
    }
}

export default connect(mSTP, mDTP)(EditChapterForm);