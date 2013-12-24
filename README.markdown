# test_nested_attributes

I haven't done nested attributes in Rails 4, and I hear a lot of folks
having issues with them, so I thought I'd put up a little experimental
application to try it out.

I want to see what happens if you omit a nested model from the strong
parameters method.

**Result:** the omitted nested model values are simply not stored,
with no indication. I suppose this makes the most sense, and if the
parent model requires the nested values, the parent model should use
validation instead.
