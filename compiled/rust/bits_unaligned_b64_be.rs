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
pub struct BitsUnalignedB64Be {
    pub _root: SharedType<BitsUnalignedB64Be>,
    pub _parent: SharedType<BitsUnalignedB64Be>,
    pub _self: SharedType<Self>,
    a: RefCell<bool>,
    b: RefCell<u64>,
    c: RefCell<u64>,
    _io: RefCell<BytesReader>,
}
impl KStruct for BitsUnalignedB64Be {
    type Root = BitsUnalignedB64Be;
    type Parent = BitsUnalignedB64Be;

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
        *self_rc.b.borrow_mut() = _io.read_bits_int_be(64)?;
        *self_rc.c.borrow_mut() = _io.read_bits_int_be(7)?;
        Ok(())
    }
}
impl BitsUnalignedB64Be {
}
impl BitsUnalignedB64Be {
    pub fn a(&self) -> Ref<bool> {
        self.a.borrow()
    }
}
impl BitsUnalignedB64Be {
    pub fn b(&self) -> Ref<u64> {
        self.b.borrow()
    }
}
impl BitsUnalignedB64Be {
    pub fn c(&self) -> Ref<u64> {
        self.c.borrow()
    }
}
impl BitsUnalignedB64Be {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
