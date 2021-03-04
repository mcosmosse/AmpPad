import React from 'react';
import { Link } from 'react-router-dom';
// import border from '../../../public/border.jpg';

class ChapterShow extends React.Component {

    componentDidMount() {
        this.props.fetchStory(this.props.match.params.storyId)
            .then(() => this.props.fetchChapter(this.props.match.params.chapterId));
    }

    componentDidUpdate(prevProps) {
        if (prevProps.match.params.chapterId !== this.props.match.params.chapterId) {
            this.props.fetchChapter(this.props.match.params.chapterId);
        }
    }

    lastChapter() {
        if (parseInt(this.props.chapter.chapterNumber) >= this.props.chapters.length) {
            return (
                <div>End of Story</div>
            );
        } else {
            const nextChapter = this.props.chapters[this.props.chapter.chapterNumber];
            return (
                <Link to={`/stories/${this.props.chapter.storyId}/${nextChapter.id}`}>Next Chapter</Link>
            );
        }
    }

    editChapter() {
        if (this.props.chapter.userId === this.props.authorId) {
            return (
                <Link
                className='chapter-show-edit'
                to={`/stories/${this.props.match.params.storyId}/${this.props.match.params.chapterId}/edit`}
                >
                    Edit
                </Link>
            )
        } else {
            return null;
        }
    }

    handleDropdown(e) {
        e.currentTarget.classList.toggle('show-table')
    }

    render() {
        if (this.props.chapter === undefined) {
            return (
                null
            );
        } else {
            return (
                <div className='chapter-show-div'>
                    <ul className='chapter-show-table' onClick={this.handleDropdown}>
                        {this.props.story.title}    
                        <div>
                            <li><Link to={`/stories/${this.props.story.id}`}>{this.props.story.title}</Link></li>
                            {this.props.chapters.map((chapter) => {
                                return (
                                    <li key={chapter.id}><Link to={`/stories/${chapter.storyId}/${chapter.id}`}>
                                        {chapter.chapterNumber}: {chapter.title}
                                    </Link></li>
                                )
                            })}
                            <li><Link to={`/home`}>Return to Home Page</Link></li>
                        </div>
                    </ul>
                    <div className='chapter-show-header'>
                        {this.editChapter()}
                    </div>
                    <h1>{this.props.chapter.title}</h1>
                    <div></div>
                    {/* <hr></hr> */}
                    <img src={border} />
                    <pre className='chapter-show-text'>{this.props.chapter.body}</pre>
                    {this.lastChapter()}
                </div>
            );
            // ! eventually add table of contents
        }
    }
}
 
export default ChapterShow;