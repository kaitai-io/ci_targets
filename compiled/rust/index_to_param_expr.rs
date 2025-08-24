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
pub struct IndexToParamExpr {
    pub _root: SharedType<IndexToParamExpr>,
    pub _parent: SharedType<IndexToParamExpr>,
    pub _self: SharedType<Self>,
    qty: RefCell<u32>,
    sizes: RefCell<Vec<u32>>,
    blocks: RefCell<Vec<OptRc<IndexToParamExpr_Block>>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for IndexToParamExpr {
    type Root = IndexToParamExpr;
    type Parent = IndexToParamExpr;

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
        *self_rc.qty.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.sizes.borrow_mut() = Vec::new();
        let l_sizes = *self_rc.qty();
        for _i in 0..l_sizes {
            self_rc.sizes.borrow_mut().push(_io.read_u4le()?.into());
        }
        *self_rc.blocks.borrow_mut() = Vec::new();
        let l_blocks = *self_rc.qty();
        for _i in 0..l_blocks {
            let f = |t : &mut IndexToParamExpr_Block| Ok(t.set_params((_i).try_into().map_err(|_| KError::CastError)?));
            let t = Self::read_into_with_init::<_, IndexToParamExpr_Block>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()), &f)?.into();
            self_rc.blocks.borrow_mut().push(t);
        }
        Ok(())
    }
}
impl IndexToParamExpr {
}
impl IndexToParamExpr {
    pub fn qty(&self) -> Ref<'_, u32> {
        self.qty.borrow()
    }
}
impl IndexToParamExpr {
    pub fn sizes(&self) -> Ref<'_, Vec<u32>> {
        self.sizes.borrow()
    }
}
impl IndexToParamExpr {
    pub fn blocks(&self) -> Ref<'_, Vec<OptRc<IndexToParamExpr_Block>>> {
        self.blocks.borrow()
    }
}
impl IndexToParamExpr {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct IndexToParamExpr_Block {
    pub _root: SharedType<IndexToParamExpr>,
    pub _parent: SharedType<IndexToParamExpr>,
    pub _self: SharedType<Self>,
    idx: RefCell<i32>,
    buf: RefCell<String>,
    _io: RefCell<BytesReader>,
}
impl KStruct for IndexToParamExpr_Block {
    type Root = IndexToParamExpr;
    type Parent = IndexToParamExpr;

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
        *self_rc.buf.borrow_mut() = bytes_to_str(&_io.read_bytes(_r.sizes()[*self_rc.idx() as usize] as usize)?.into(), "ASCII")?;
        Ok(())
    }
}
impl IndexToParamExpr_Block {
    pub fn idx(&self) -> Ref<'_, i32> {
        self.idx.borrow()
    }
}
impl IndexToParamExpr_Block {
    pub fn set_params(&mut self, idx: i32) {
        *self.idx.borrow_mut() = idx;
    }
}
impl IndexToParamExpr_Block {
}
impl IndexToParamExpr_Block {
    pub fn buf(&self) -> Ref<'_, String> {
        self.buf.borrow()
    }
}
impl IndexToParamExpr_Block {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
