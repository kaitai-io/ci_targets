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
pub struct ProcessXor4Value {
    pub _root: SharedType<ProcessXor4Value>,
    pub _parent: SharedType<ProcessXor4Value>,
    pub _self: SharedType<Self>,
    key: RefCell<Vec<u8>>,
    buf: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
    buf_raw: RefCell<Vec<u8>>,
}
impl KStruct for ProcessXor4Value {
    type Root = ProcessXor4Value;
    type Parent = ProcessXor4Value;

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
        *self_rc.key.borrow_mut() = _io.read_bytes(4 as usize)?.into();
        *self_rc.buf_raw.borrow_mut() = _io.read_bytes_full()?.into();
        *self_rc.buf.borrow_mut() = process_xor_many(&self_rc.buf_raw.borrow(), &self_rc.key());
        Ok(())
    }
}
impl ProcessXor4Value {
}
impl ProcessXor4Value {
    pub fn key(&self) -> Ref<Vec<u8>> {
        self.key.borrow()
    }
}
impl ProcessXor4Value {
    pub fn buf(&self) -> Ref<Vec<u8>> {
        self.buf.borrow()
    }
}
impl ProcessXor4Value {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
impl ProcessXor4Value {
    pub fn buf_raw(&self) -> Ref<Vec<u8>> {
        self.buf_raw.borrow()
    }
}
