# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

class Solr::Response::IndexInfo < Solr::Response::Ruby
  def initialize(ruby_code)
    super(ruby_code)
  end

  def num_docs
    return @data['index']['numDocs']
  end
  
  def field_names
    return @data['fields'].keys
  end

end
