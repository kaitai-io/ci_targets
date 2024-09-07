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
pub struct RepeatEosStruct {
    pub _root: SharedType<RepeatEosStruct>,
    pub _parent: SharedType<RepeatEosStruct>,
    pub _self: SharedType<Self>,
    chunks: RefCell<Vec<OptRc<RepeatEosStruct_Chunk>>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for RepeatEosStruct {
    type Root = RepeatEosStruct;
    type Parent = RepeatEosStruct;

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
        *self_rc.chunks.borrow_mut() = Vec::new();
        {
            let mut _i = 0;
            while !_io.is_eof() {
                let t = Self::read_into::<_, RepeatEosStruct_Chunk>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                self_rc.chunks.borrow_mut().push(t);
                _i += 1;
            }
        }
        Ok(())
    }
}
impl RepeatEosStruct {
}
impl RepeatEosStruct {
    pub fn chunks(&self) -> Ref<Vec<OptRc<RepeatEosStruct_Chunk>>> {
        self.chunks.borrow()
    }
}
impl RepeatEosStruct {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct RepeatEosStruct_Chunk {
    pub _root: SharedType<RepeatEosStruct>,
    pub _parent: SharedType<RepeatEosStruct>,
    pub _self: SharedType<Self>,
    offset: RefCell<u32>,
    len: RefCell<u32>,
    _io: RefCell<BytesReader>,
}
impl KStruct for RepeatEosStruct_Chunk {
    type Root = RepeatEosStruct;
    type Parent = RepeatEosStruct;

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
        *self_rc.offset.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.len.borrow_mut() = _io.read_u4le()?.into();
        Ok(())
    }
}
impl RepeatEosStruct_Chunk {
}
impl RepeatEosStruct_Chunk {
    pub fn offset(&self) -> Ref<u32> {
        self.offset.borrow()
    }
}
impl RepeatEosStruct_Chunk {
    pub fn len(&self) -> Ref<u32> {
        self.len.borrow()
    }
}
impl RepeatEosStruct_Chunk {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
