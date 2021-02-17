import { Link } from 'react-router-dom';
import React from 'react';

const StoryIndexItem = (props) => {
    return (
        <div className='my-story-index-item'>
            <Link className='my-story-index-item-title' to={`/mystories/${props.story.id}`}>{`${props.story.title}`}</Link>
            <br></br>
            <p>{props.story.description}</p>
        </div>
    )
}

export default StoryIndexItem;