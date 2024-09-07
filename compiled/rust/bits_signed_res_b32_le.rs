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
pub struct BitsSignedResB32Le {
    pub _root: SharedType<BitsSignedResB32Le>,
    pub _parent: SharedType<BitsSignedResB32Le>,
    pub _self: SharedType<Self>,
    a: RefCell<u64>,
    _io: RefCell<BytesReader>,
}
impl KStruct for BitsSignedResB32Le {
    type Root = BitsSignedResB32Le;
    type Parent = BitsSignedResB32Le;

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
        *self_rc.a.borrow_mut() = _io.read_bits_int_le(32)?;
        Ok(())
    }
}
impl BitsSignedResB32Le {
}
impl BitsSignedResB32Le {
    pub fn a(&self) -> Ref<u64> {
        self.a.borrow()
    }
}
impl BitsSignedResB32Le {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
