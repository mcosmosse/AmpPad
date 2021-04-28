import { connect } from 'react-redux';
import CollectionIndex from './collection_index';
import { myCollections } from '../../reducers/selectors';
import { fetchCollections } from '../../actions/collection_actions';

const mSTP = state => ({
    collections: myCollections(state, state.session.currentUserId)
});

const mDTP = dispatch => ({
    fetchCollections: () => dispatch(fetchCollections())
});

export default connect(mSTP, mDTP)(CollectionIndex);