import { Link } from 'react-router-dom';
import React from 'react';

const CollectionIndexItem = (props) => {
    return (
        <div className='collection-index-item'>
            <Link className='collection-index-item-title' to={`/collections/${props.collection.id}`}>{`${props.collection.title}`}</Link>
            <br></br>
            <p>{props.collection.count === 0 ? 'No' : props.collection.count} {props.collection.count === 1 ? 'Story' : 'Stories'}</p>
        </div>
    )
}

export default CollectionIndexItem;