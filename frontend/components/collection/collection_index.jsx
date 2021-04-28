import React from 'react';
import CollectionIndexItem from './collection_index_item';
import { Link } from 'react-router-dom'

class CollectionIndex extends React.Component {

    componentDidMount() {
        this.props.fetchCollections();
    }

    render() {
        const { collections } = this.props;
        return (
            <div className='collection-index'>
                <p className='collection-index-title'>My Collections</p>
                <Link to='/collections/new'>+ New Collection</Link>
                {collections.map((collection) => <CollectionIndexItem collection={collection} key={collection.id} />)}
            </div>
        )
    }

}

export default CollectionIndex;