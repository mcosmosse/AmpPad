import React from 'react';
import { Link } from 'react-router-dom';

class CollectionShow extends React.Component {
    constructor(props) {
        super(props);
    }

    componentDidMount() {
        this.props.fetchCollection(this.props.match.params.collectionId)
    }

    render() {
        if (this.props.collection === undefined || this.props.collection.stories === undefined) {
            return (
                <div>There are no stories here. Go add a few!</div>
            );
        } else {
            const { collection } = this.props;
            const stories = Object.values(collection.stories);
            return (
                <div>
                    <div className='collection-title'>
                        {collection.title}
                    </div>
                    <div className='collection-count'>
                        {collection.count}
                    </div>
                    <div className='collection-stories'>
                        {stories.map((story) => (
                            <div className='collection-story' key={story.id}>
                                <Link to={`/stories/${story.id}`}>{story.title}</Link>
                                <p>{story.description}</p>
                            </div>
                        ))}
                    </div>
                </div>
            )
        }
    }
}

export default CollectionShow;