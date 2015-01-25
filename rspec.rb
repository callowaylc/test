describe User do
  it "should be in any roles assigned to it" do
    user = User.new
    user.assign_role("assigned role")
    user.should be_in_role("assigned role")
  end

  it "should NOT be in any roles not assigned to it" do
    user = User.new
    user.should_not be_in_role("unassigned role")
  end
end

describe ArticlesHelper do
  context ".article_tags" do
    it "should return a comma separated list of tag names" do
      article = Fabricate(:article)
      tags = [Fabricate(:tag), Fabricate(:tag)]
      article.tags << tags
      article_tags.should == "#{tags[0].name}, #{tags[1].name}"
    end
  end
end

describe CacheManager do
  context "structure and validation" do
    it "has its columns" do
      should have_db_column(:target)
    end

    it "validates its validables" do
      should validate_uniqueness_of(:target)
      should validate_presence_of(:target)
    end
  end
end