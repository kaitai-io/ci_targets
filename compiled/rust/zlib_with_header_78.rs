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
pub struct ZlibWithHeader78 {
    pub _root: SharedType<ZlibWithHeader78>,
    pub _parent: SharedType<ZlibWithHeader78>,
    pub _self: SharedType<Self>,
    data: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
    data_raw: RefCell<Vec<u8>>,
}
impl KStruct for ZlibWithHeader78 {
    type Root = ZlibWithHeader78;
    type Parent = ZlibWithHeader78;

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
        *self_rc.data_raw.borrow_mut() = _io.read_bytes_full()?.into();
        *self_rc.data.borrow_mut() = process_zlib(&self_rc.data_raw.borrow()).map_err(|msg| KError::BytesDecodingError { msg })?;
        Ok(())
    }
}
impl ZlibWithHeader78 {
}
impl ZlibWithHeader78 {
    pub fn data(&self) -> Ref<Vec<u8>> {
        self.data.borrow()
    }
}
impl ZlibWithHeader78 {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
impl ZlibWithHeader78 {
    pub fn data_raw(&self) -> Ref<Vec<u8>> {
        self.data_raw.borrow()
    }
}
