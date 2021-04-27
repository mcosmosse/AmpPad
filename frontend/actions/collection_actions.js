import * as Util from '../utils/collection_util';

export const RECEIVE_COLLECTION = "RECEIVE_COLLECTION";
export const RECEIVE_COLLECTIONS = "RECEIVE_COLLECTIONS";
export const REMOVE_COLLECTION = "REMOVE_COLLECTION";

// regular actions

export const receiveCollection = (collection) => ({
    type: RECEIVE_COLLECTION,
    collection
});

export const receiveCollections = (collections) => ({
    type: RECEIVE_COLLECTIONS,
    collections
});

export const removeCollection = (collection) => ({
    type: REMOVE_COLLECTION,
    collection
})

// thunk action creators

export const fetchCollection = id => dispatch => (
    Util.fetchCollection(id).then(collection => (
        dispatch(receiveCollection(collection))
    ))
);

export const fetchCollections = () => dispatch => (
    Util.fetchCollections().then(collections => (
        dispatch(receiveCollections(collections))
    ))
);

export const deleteCollection = id => dispatch => (
    Util.deleteCollection(id).then(collection => (
        dispatch(removeCollection(collection))
    ))
);

export const createCollection = collection => dispatch => (
    Util.createCollection(collection).then(newCollection => (
        dispatch(receiveCollection(newCollection))
    ))
);

export const updateCollection = collection => dispatch => (
    Util.updateCollection(collection).then(newCollection => (
        dispatch(receiveCollection(newCollection))
    ))
);