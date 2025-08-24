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
pub struct ZlibSurrounded {
    pub _root: SharedType<ZlibSurrounded>,
    pub _parent: SharedType<ZlibSurrounded>,
    pub _self: SharedType<Self>,
    pre: RefCell<Vec<u8>>,
    zlib: RefCell<OptRc<ZlibSurrounded_Inflated>>,
    post: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
    zlib_raw: RefCell<Vec<u8>>,
    zlib_raw_raw: RefCell<Vec<u8>>,
}
impl KStruct for ZlibSurrounded {
    type Root = ZlibSurrounded;
    type Parent = ZlibSurrounded;

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
        *self_rc.pre.borrow_mut() = _io.read_bytes(4 as usize)?.into();
        *self_rc.zlib_raw_raw.borrow_mut() = _io.read_bytes(12 as usize)?.into();
        *self_rc.zlib_raw.borrow_mut() = process_zlib(&self_rc.zlib_raw_raw.borrow()).map_err(|msg| KError::BytesDecodingError { msg })?;
        let zlib_raw = self_rc.zlib_raw.borrow();
        let _t_zlib_raw_io = BytesReader::from(zlib_raw.clone());
        let t = Self::read_into::<BytesReader, ZlibSurrounded_Inflated>(&_t_zlib_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.zlib.borrow_mut() = t;
        *self_rc.post.borrow_mut() = _io.read_bytes(4 as usize)?.into();
        Ok(())
    }
}
impl ZlibSurrounded {
}
impl ZlibSurrounded {
    pub fn pre(&self) -> Ref<'_, Vec<u8>> {
        self.pre.borrow()
    }
}
impl ZlibSurrounded {
    pub fn zlib(&self) -> Ref<'_, OptRc<ZlibSurrounded_Inflated>> {
        self.zlib.borrow()
    }
}
impl ZlibSurrounded {
    pub fn post(&self) -> Ref<'_, Vec<u8>> {
        self.post.borrow()
    }
}
impl ZlibSurrounded {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
impl ZlibSurrounded {
    pub fn zlib_raw(&self) -> Ref<'_, Vec<u8>> {
        self.zlib_raw.borrow()
    }
}
impl ZlibSurrounded {
    pub fn zlib_raw_raw(&self) -> Ref<'_, Vec<u8>> {
        self.zlib_raw_raw.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct ZlibSurrounded_Inflated {
    pub _root: SharedType<ZlibSurrounded>,
    pub _parent: SharedType<ZlibSurrounded>,
    pub _self: SharedType<Self>,
    num: RefCell<i32>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ZlibSurrounded_Inflated {
    type Root = ZlibSurrounded;
    type Parent = ZlibSurrounded;

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
        *self_rc.num.borrow_mut() = _io.read_s4le()?.into();
        Ok(())
    }
}
impl ZlibSurrounded_Inflated {
}
impl ZlibSurrounded_Inflated {
    pub fn num(&self) -> Ref<'_, i32> {
        self.num.borrow()
    }
}
impl ZlibSurrounded_Inflated {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
