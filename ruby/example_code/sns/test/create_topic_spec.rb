# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0

require "rspec"
require_relative "../create_topic"

describe TopicCreateWrapper do
  # @topic_name = "doc-example-topic"
  # @topic = Aws::SNS::Client.new(stub_responses: true)
  # @wrapper = TopicCreateWrapper.new(@topic)
  # @stubbed_topics = {
  #   "topics":
  #     [
  #       { topic_arn: 'topicARN' }
  #     ]
  # }

  it "confirms the topic was created" do
    @topic_name = "doc-example-topic"
    @topic = Aws::SNS::Client.new(stub_responses: true)
    @wrapper = TopicCreateWrapper.new(@topic)
    @stubbed_topics = {
      "topics":
        [
          { topic_arn: 'topicARN' }
        ]
    }
    @wrapper.topic.stub_responses(:list_topics, @stubbed_topics)
    test = @wrapper.create("doc-example-topic")
    expect(@wrapper.topic.list_topics.topics[0].topic_arn).to be_eql(test.to_s)
  end
end