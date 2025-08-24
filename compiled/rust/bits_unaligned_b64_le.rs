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
pub struct BitsUnalignedB64Le {
    pub _root: SharedType<BitsUnalignedB64Le>,
    pub _parent: SharedType<BitsUnalignedB64Le>,
    pub _self: SharedType<Self>,
    a: RefCell<bool>,
    b: RefCell<u64>,
    c: RefCell<u64>,
    _io: RefCell<BytesReader>,
}
impl KStruct for BitsUnalignedB64Le {
    type Root = BitsUnalignedB64Le;
    type Parent = BitsUnalignedB64Le;

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
        *self_rc.a.borrow_mut() = _io.read_bits_int_le(1)? != 0;
        *self_rc.b.borrow_mut() = _io.read_bits_int_le(64)?;
        *self_rc.c.borrow_mut() = _io.read_bits_int_le(7)?;
        Ok(())
    }
}
impl BitsUnalignedB64Le {
}
impl BitsUnalignedB64Le {
    pub fn a(&self) -> Ref<'_, bool> {
        self.a.borrow()
    }
}
impl BitsUnalignedB64Le {
    pub fn b(&self) -> Ref<'_, u64> {
        self.b.borrow()
    }
}
impl BitsUnalignedB64Le {
    pub fn c(&self) -> Ref<'_, u64> {
        self.c.borrow()
    }
}
impl BitsUnalignedB64Le {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
