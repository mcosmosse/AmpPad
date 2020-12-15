import React from 'react';
import StoryIndexItem from './story_index_item';

class StoryIndex extends React.Component {

    componentDidMount() {
        this.props.fetchStories();
    }

    render() { 
        const { stories } = this.props;
        return (  
            <div>
                <ul>
                    {stories.map((story) => <StoryIndexItem story={story} key={story.id} />)}
                </ul>
            </div>
        );
    }
}
 
export default StoryIndex;