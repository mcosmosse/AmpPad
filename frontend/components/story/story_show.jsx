import React from 'react';
import { Link } from 'react-router-dom';

class StoryShow extends React.Component {
    constructor(props) {
        super(props);
    }

    componentDidMount() {
        this.props.fetchStory(this.props.match.params.storyId);
    }

    render() {
        if (this.props.story === undefined || this.props.chapters.length === 0) {
            return null;
        } else {
            const firstChapter = this.props.chapters[0]
            return (
                <div className='story-show'>
                    <h2>{this.props.story.title}</h2>
                    <Link className='story-show-read' to={`/stories/${this.props.story.id}/${firstChapter.id}`}>Read</Link>
                    <p className='story-desc'>{this.props.story.description}</p>
                    <div className='story-tags'></div>
                    <p className='story-table'>Table of Contents</p>
                    <hr className='story-table-underline'></hr>
                    <hr></hr>
                    <ul>
                        {this.props.chapters.map((chapter) => (
                            <div key={chapter.id}>
                                <Link className='story-chapter-link' to={`/stories/${this.props.story.id}/${chapter.id}`}>{chapter.title}</Link>
                                <hr></hr>
                            </div>
                        ))}
                    </ul>
                </div>
            )
        }
    }
}

export default StoryShow;