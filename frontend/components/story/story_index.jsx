import React from 'react';
import StoryIndexItem from './story_index_item';

class StoryIndex extends React.Component {

    componentDidMount() {
        this.props.fetchStories();
    }

    render() { 
        const { stories } = this.props;
        return (  
            <div className='story-index'>
                <p className='story-index-title'>Browse Stories</p>
                {stories.map((story) => <StoryIndexItem story={story} key={story.id} />)}

            </div>
        );
    }
}
 
export default StoryIndex;