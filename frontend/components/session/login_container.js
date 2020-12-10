import { connect } from 'react-redux';
import sessionForm from './session_form';
import { login } from '../../actions/session_actions';

const mSTP = (state) => {
    return {
        formType: 'Login!',
        errors: state.errors.session
    };
};

const mDTP = (dispatch) => ({
    action: (user) => dispatch(login(user))
});

export default connect(mSTP, mDTP)(sessionForm);