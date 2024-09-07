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
use crate::custom_fx_no_args::*;

#[derive(Default, Debug, Clone)]
pub struct ProcessCustomNoArgs {
    pub _root: SharedType<ProcessCustomNoArgs>,
    pub _parent: SharedType<ProcessCustomNoArgs>,
    pub _self: SharedType<Self>,
    buf: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
    buf_raw: RefCell<Vec<u8>>,
}
impl KStruct for ProcessCustomNoArgs {
    type Root = ProcessCustomNoArgs;
    type Parent = ProcessCustomNoArgs;

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
        *self_rc.buf_raw.borrow_mut() = _io.read_bytes(5 as usize)?.into();
        let _process_buf_raw = CustomFxNoArgs::new();
        *self_rc.buf.borrow_mut() = _process_buf_raw.decode(&self_rc.buf_raw.borrow()).map_err(|msg| KError::BytesDecodingError { msg })?;
        Ok(())
    }
}
impl ProcessCustomNoArgs {
}
impl ProcessCustomNoArgs {
    pub fn buf(&self) -> Ref<Vec<u8>> {
        self.buf.borrow()
    }
}
impl ProcessCustomNoArgs {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
impl ProcessCustomNoArgs {
    pub fn buf_raw(&self) -> Ref<Vec<u8>> {
        self.buf_raw.borrow()
    }
}
