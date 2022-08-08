# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0

# Purpose
#
# Shows how to use the AWS SDK for Ruby to create an Amazon Simple Storage Service (Amazon SNS) topic.

# snippet-start:[sns.ruby.create_topic_snippet.rb]
require "aws-sdk-sns"

class TopicCreateWrapper
  attr_reader :topic

  def initialize(topic)
    @topic = topic
  end

  def create(topic_name)
    response = @topic.create_topic(name: topic_name)
    return response.topic_arn
  end
end