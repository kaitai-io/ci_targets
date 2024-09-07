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
pub struct IndexToParamEos {
    pub _root: SharedType<IndexToParamEos>,
    pub _parent: SharedType<IndexToParamEos>,
    pub _self: SharedType<Self>,
    qty: RefCell<u32>,
    sizes: RefCell<Vec<u32>>,
    blocks: RefCell<Vec<OptRc<IndexToParamEos_Block>>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for IndexToParamEos {
    type Root = IndexToParamEos;
    type Parent = IndexToParamEos;

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
        {
            let mut _i = 0;
            while !_io.is_eof() {
                let f = |t : &mut IndexToParamEos_Block| Ok(t.set_params((_i).try_into().map_err(|_| KError::CastError)?));
                let t = Self::read_into_with_init::<_, IndexToParamEos_Block>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()), &f)?.into();
                self_rc.blocks.borrow_mut().push(t);
                _i += 1;
            }
        }
        Ok(())
    }
}
impl IndexToParamEos {
}
impl IndexToParamEos {
    pub fn qty(&self) -> Ref<u32> {
        self.qty.borrow()
    }
}
impl IndexToParamEos {
    pub fn sizes(&self) -> Ref<Vec<u32>> {
        self.sizes.borrow()
    }
}
impl IndexToParamEos {
    pub fn blocks(&self) -> Ref<Vec<OptRc<IndexToParamEos_Block>>> {
        self.blocks.borrow()
    }
}
impl IndexToParamEos {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct IndexToParamEos_Block {
    pub _root: SharedType<IndexToParamEos>,
    pub _parent: SharedType<IndexToParamEos>,
    pub _self: SharedType<Self>,
    idx: RefCell<i32>,
    buf: RefCell<String>,
    _io: RefCell<BytesReader>,
}
impl KStruct for IndexToParamEos_Block {
    type Root = IndexToParamEos;
    type Parent = IndexToParamEos;

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
impl IndexToParamEos_Block {
    pub fn idx(&self) -> Ref<i32> {
        self.idx.borrow()
    }
}
impl IndexToParamEos_Block {
    pub fn set_params(&mut self, idx: i32) {
        *self.idx.borrow_mut() = idx;
    }
}
impl IndexToParamEos_Block {
}
impl IndexToParamEos_Block {
    pub fn buf(&self) -> Ref<String> {
        self.buf.borrow()
    }
}
impl IndexToParamEos_Block {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
