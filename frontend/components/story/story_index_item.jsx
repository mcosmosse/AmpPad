import { Link } from 'react-router-dom';
import React from 'react';

const StoryIndexItem = (props) => {
    return (
        <li>
            <Link to={`/stories/${props.story.id}`}>{`${props.story.title}`}</Link>
            <br></br>
            <Link to={`/users/${props.story.userId}`}>{`${props.story.author}`}</Link>
            <br></br>
            <p>{props.story.description}</p>
        </li>
    )
}
// ! fix author link

export default StoryIndexItem;