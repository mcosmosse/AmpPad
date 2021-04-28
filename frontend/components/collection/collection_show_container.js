import { connect } from 'react-redux';
import CollectionShow from './collection_show';
import { fetchCollection } from '../../actions/collection_actions';

const mSTP = (state, ownProps) => ({
    collection: state.entities.collections[ownProps.match.params.collectionId]
});

const mDTP = dispatch => ({
    fetchCollection: (id) => dispatch(fetchCollection(id))
});

export default connect(mSTP, mDTP)(CollectionShow);