import React from 'react';
import MyStoryIndexItem from './my_story_index_item';
import { Link } from 'react-router-dom';

class MyStoryIndex extends React.Component {

    componentDidMount() {
        this.props.fetchStories();
    }

    render() { 
        const { stories } = this.props;
        return (  
            <div className='my-story-index'>
                <p className='my-story-index-title'>My Stories</p>
                <Link to='/stories/new'>+New Story</Link>
                {stories.map((story) => <MyStoryIndexItem story={story} key={story.id} />)}
            </div>
        );
    }
}
 
export default MyStoryIndex;