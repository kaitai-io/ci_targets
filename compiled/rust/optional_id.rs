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
pub struct OptionalId {
    pub _root: SharedType<OptionalId>,
    pub _parent: SharedType<OptionalId>,
    pub _self: SharedType<Self>,
    unnamed0: RefCell<u8>,
    unnamed1: RefCell<u8>,
    unnamed2: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for OptionalId {
    type Root = OptionalId;
    type Parent = OptionalId;

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
        *self_rc.unnamed0.borrow_mut() = _io.read_u1()?.into();
        *self_rc.unnamed1.borrow_mut() = _io.read_u1()?.into();
        *self_rc.unnamed2.borrow_mut() = _io.read_bytes(5 as usize)?.into();
        Ok(())
    }
}
impl OptionalId {
}
impl OptionalId {
    pub fn unnamed0(&self) -> Ref<'_, u8> {
        self.unnamed0.borrow()
    }
}
impl OptionalId {
    pub fn unnamed1(&self) -> Ref<'_, u8> {
        self.unnamed1.borrow()
    }
}
impl OptionalId {
    pub fn unnamed2(&self) -> Ref<'_, Vec<u8>> {
        self.unnamed2.borrow()
    }
}
impl OptionalId {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
