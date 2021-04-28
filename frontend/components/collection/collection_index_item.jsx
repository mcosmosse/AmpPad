import { Link } from 'react-router-dom';
import React from 'react';

const CollectionIndexItem = (props) => {
    return (
        <div className='my-collection-index-item'>
            <Link className='my-collection-index-item-title' to={`/collections/${props.collection.id}`}>{`${props.collection.title}`}</Link>
            <br></br>
            <p>{props.collection.count} Stories</p>
        </div>
    )
}

export default CollectionIndexItem;