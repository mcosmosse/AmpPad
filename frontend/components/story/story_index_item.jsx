import { Link } from 'react-router-dom';
import React from 'react';

const StoryIndexItem = (props) => {
    return (
        <div className='story-index-item'>
            <Link className='story-index-item-title' to={`/stories/${props.story.id}`}>{`${props.story.title}`}</Link>
            <br></br>
            <Link className='story-index-item-author' to={`/users/${props.story.userId}`}>by {`${props.story.author}`}</Link>
            <div className='story-index-item-votes'>{props.story.votes.length} ★</div>
            <br></br>
            <p>{props.story.description}</p>
        </div>
    )
}
// ! fix author link

export default StoryIndexItem;