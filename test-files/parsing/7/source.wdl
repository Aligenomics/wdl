composite_task test {
  for (item in collection) {
    step task[version=0] {
      input: p0=x, p1=y, p2=item.z;
      output: File("xyz") as list;
    }
  }

  step task1[version=0] {
    input: p0=list;
  }
}
