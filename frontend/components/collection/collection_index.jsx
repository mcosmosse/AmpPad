import React from 'react';
import CollectionIndexItem from './collection_index_item';
import { Link } from 'react-router-dom'
import CollectionForm from './collection_form_container';

class CollectionIndex extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            show: false
        };
        this.showModal = this.showModal.bind(this);
        this.closeModal = this.closeModal.bind(this);
    }

    componentDidMount() {
        this.props.fetchCollections();
    }

    showModal() {
        // e.preventDefault();
        this.setState({
            show: !this.state.show
        });
    };

    closeModal(e) {
        // e.preventDefault();
        this.setState({show: false})
    }

    render() {
        const { collections } = this.props;
        return (
            <div className='collection-index'>
                <button onClick={(e) => {
                    this.showModal(e);
                }}
                > Create a New Collection </button>
                <CollectionForm onClose={this.closeModal} show={this.state.show} />
                <p className='collection-index-title'>My Collections</p>
                {collections.map((collection) => <CollectionIndexItem collection={collection} key={collection.id} />)}
            </div>
        )
    }

}

export default CollectionIndex;