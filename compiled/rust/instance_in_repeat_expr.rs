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
pub struct InstanceInRepeatExpr {
    pub _root: SharedType<InstanceInRepeatExpr>,
    pub _parent: SharedType<InstanceInRepeatExpr>,
    pub _self: SharedType<Self>,
    chunks: RefCell<Vec<OptRc<InstanceInRepeatExpr_Chunk>>>,
    _io: RefCell<BytesReader>,
    f_num_chunks: Cell<bool>,
    num_chunks: RefCell<u32>,
}
impl KStruct for InstanceInRepeatExpr {
    type Root = InstanceInRepeatExpr;
    type Parent = InstanceInRepeatExpr;

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
        let l_chunks = *self_rc.num_chunks()?;
        for _i in 0..l_chunks {
            let t = Self::read_into::<_, InstanceInRepeatExpr_Chunk>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
            self_rc.chunks.borrow_mut().push(t);
        }
        Ok(())
    }
}
impl InstanceInRepeatExpr {
    pub fn num_chunks(
        &self
    ) -> KResult<Ref<'_, u32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_num_chunks.get() {
            return Ok(self.num_chunks.borrow());
        }
        self.f_num_chunks.set(true);
        let _pos = _io.pos();
        _io.seek(((_io.pos() as i32) + (16 as i32)) as usize)?;
        *self.num_chunks.borrow_mut() = _io.read_u4le()?.into();
        _io.seek(_pos)?;
        Ok(self.num_chunks.borrow())
    }
}
impl InstanceInRepeatExpr {
    pub fn chunks(&self) -> Ref<'_, Vec<OptRc<InstanceInRepeatExpr_Chunk>>> {
        self.chunks.borrow()
    }
}
impl InstanceInRepeatExpr {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct InstanceInRepeatExpr_Chunk {
    pub _root: SharedType<InstanceInRepeatExpr>,
    pub _parent: SharedType<InstanceInRepeatExpr>,
    pub _self: SharedType<Self>,
    offset: RefCell<u32>,
    len: RefCell<u32>,
    _io: RefCell<BytesReader>,
}
impl KStruct for InstanceInRepeatExpr_Chunk {
    type Root = InstanceInRepeatExpr;
    type Parent = InstanceInRepeatExpr;

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
impl InstanceInRepeatExpr_Chunk {
}
impl InstanceInRepeatExpr_Chunk {
    pub fn offset(&self) -> Ref<'_, u32> {
        self.offset.borrow()
    }
}
impl InstanceInRepeatExpr_Chunk {
    pub fn len(&self) -> Ref<'_, u32> {
        self.len.borrow()
    }
}
impl InstanceInRepeatExpr_Chunk {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
