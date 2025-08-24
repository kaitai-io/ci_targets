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
use crate::my_custom_fx::*;
use crate::custom_fx::*;

#[derive(Default, Debug, Clone)]
pub struct ProcessCustom {
    pub _root: SharedType<ProcessCustom>,
    pub _parent: SharedType<ProcessCustom>,
    pub _self: SharedType<Self>,
    buf1: RefCell<Vec<u8>>,
    buf2: RefCell<Vec<u8>>,
    key: RefCell<u8>,
    buf3: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
    buf1_raw: RefCell<Vec<u8>>,
    buf2_raw: RefCell<Vec<u8>>,
    buf3_raw: RefCell<Vec<u8>>,
}
impl KStruct for ProcessCustom {
    type Root = ProcessCustom;
    type Parent = ProcessCustom;

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
        *self_rc.buf1_raw.borrow_mut() = _io.read_bytes(5 as usize)?.into();
        let _process_buf1_raw = MyCustomFx::new(7, true, &vec![0x20u8, 0x30u8, 0x40u8]);
        *self_rc.buf1.borrow_mut() = _process_buf1_raw.decode(&self_rc.buf1_raw.borrow()).map_err(|msg| KError::BytesDecodingError { msg })?;
        *self_rc.buf2_raw.borrow_mut() = _io.read_bytes(5 as usize)?.into();
        let _process_buf2_raw = Nested::Deeply::CustomFx::new(7);
        *self_rc.buf2.borrow_mut() = _process_buf2_raw.decode(&self_rc.buf2_raw.borrow()).map_err(|msg| KError::BytesDecodingError { msg })?;
        *self_rc.key.borrow_mut() = _io.read_u1()?.into();
        *self_rc.buf3_raw.borrow_mut() = _io.read_bytes(5 as usize)?.into();
        let _process_buf3_raw = MyCustomFx::new(*self_rc.key(), false, &vec![0x0u8]);
        *self_rc.buf3.borrow_mut() = _process_buf3_raw.decode(&self_rc.buf3_raw.borrow()).map_err(|msg| KError::BytesDecodingError { msg })?;
        Ok(())
    }
}
impl ProcessCustom {
}
impl ProcessCustom {
    pub fn buf1(&self) -> Ref<'_, Vec<u8>> {
        self.buf1.borrow()
    }
}
impl ProcessCustom {
    pub fn buf2(&self) -> Ref<'_, Vec<u8>> {
        self.buf2.borrow()
    }
}
impl ProcessCustom {
    pub fn key(&self) -> Ref<'_, u8> {
        self.key.borrow()
    }
}
impl ProcessCustom {
    pub fn buf3(&self) -> Ref<'_, Vec<u8>> {
        self.buf3.borrow()
    }
}
impl ProcessCustom {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
impl ProcessCustom {
    pub fn buf1_raw(&self) -> Ref<'_, Vec<u8>> {
        self.buf1_raw.borrow()
    }
}
impl ProcessCustom {
    pub fn buf2_raw(&self) -> Ref<'_, Vec<u8>> {
        self.buf2_raw.borrow()
    }
}
impl ProcessCustom {
    pub fn buf3_raw(&self) -> Ref<'_, Vec<u8>> {
        self.buf3_raw.borrow()
    }
}
