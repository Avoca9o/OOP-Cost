trait IFace {
    fn do_nothing(&self);
}

struct Base;
impl IFace for Base {
    fn do_nothing(&self) {}
}

fn main() {
    let obj: Box<dyn IFace> = Box::new(Base);
    
    for _ in 0..100000000 {
        obj.do_nothing()
    }
}
