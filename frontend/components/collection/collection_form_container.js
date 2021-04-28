import { connect } from 'react-redux';
import { createCollection } from '../../actions/collection_actions';
import CollectionForm from './collection_form';

const mSTP = state => ({
    
});

const mDTP = dispatch => ({
    createCollection: (collection) => dispatch(createCollection(collection))
});

export default connect(mSTP, mDTP)(CollectionForm);