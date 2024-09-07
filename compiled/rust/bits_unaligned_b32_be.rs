// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#![allow(unused_imports)]
#![allow(non_snake_case)]
#![allow(non_camel_case_types)]
#![allow(irrefutable_let_patterns)]
#![allow(unused_comparisons)]

extern crate kaitai;
use kaitai::*;
use std::convert::{TryFrom, TryInto};
use std::cell::{Ref, Cell, RefCell};
use std::rc::{Rc, Weak};

#[derive(Default, Debug, Clone)]
pub struct BitsUnalignedB32Be {
    pub _root: SharedType<BitsUnalignedB32Be>,
    pub _parent: SharedType<BitsUnalignedB32Be>,
    pub _self: SharedType<Self>,
    a: RefCell<bool>,
    b: RefCell<u64>,
    c: RefCell<u64>,
    _io: RefCell<BytesReader>,
}
impl KStruct for BitsUnalignedB32Be {
    type Root = BitsUnalignedB32Be;
    type Parent = BitsUnalignedB32Be;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.a.borrow_mut() = _io.read_bits_int_be(1)? != 0;
        *self_rc.b.borrow_mut() = _io.read_bits_int_be(32)?;
        *self_rc.c.borrow_mut() = _io.read_bits_int_be(7)?;
        Ok(())
    }
}
impl BitsUnalignedB32Be {
}
impl BitsUnalignedB32Be {
    pub fn a(&self) -> Ref<bool> {
        self.a.borrow()
    }
}
impl BitsUnalignedB32Be {
    pub fn b(&self) -> Ref<u64> {
        self.b.borrow()
    }
}
impl BitsUnalignedB32Be {
    pub fn c(&self) -> Ref<u64> {
        self.c.borrow()
    }
}
impl BitsUnalignedB32Be {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
