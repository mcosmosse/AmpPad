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
        if (this.props.story === undefined) {
            return null;
        } else {
            return (
                <div>
                    <h2>{this.props.story.title}</h2>
                    <p>{this.props.story.description}</p>
                    <ul>
                        {this.props.chapters.map((chapter) => (
                            <Link to={`/stories/${this.props.story.id}/${chapter.chapterNumber}`} key={chapter.id}>{chapter.title}</Link>
                        ))}
                    </ul>
                </div>
            )
        }
    }
}

export default StoryShow;