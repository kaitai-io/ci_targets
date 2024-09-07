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
pub struct NavParent2 {
    pub _root: SharedType<NavParent2>,
    pub _parent: SharedType<NavParent2>,
    pub _self: SharedType<Self>,
    ofs_tags: RefCell<u32>,
    num_tags: RefCell<u32>,
    tags: RefCell<Vec<OptRc<NavParent2_Tag>>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NavParent2 {
    type Root = NavParent2;
    type Parent = NavParent2;

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
        *self_rc.ofs_tags.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.num_tags.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.tags.borrow_mut() = Vec::new();
        let l_tags = *self_rc.num_tags();
        for _i in 0..l_tags {
            let t = Self::read_into::<_, NavParent2_Tag>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
            self_rc.tags.borrow_mut().push(t);
        }
        Ok(())
    }
}
impl NavParent2 {
}
impl NavParent2 {
    pub fn ofs_tags(&self) -> Ref<u32> {
        self.ofs_tags.borrow()
    }
}
impl NavParent2 {
    pub fn num_tags(&self) -> Ref<u32> {
        self.num_tags.borrow()
    }
}
impl NavParent2 {
    pub fn tags(&self) -> Ref<Vec<OptRc<NavParent2_Tag>>> {
        self.tags.borrow()
    }
}
impl NavParent2 {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct NavParent2_Tag {
    pub _root: SharedType<NavParent2>,
    pub _parent: SharedType<NavParent2>,
    pub _self: SharedType<Self>,
    name: RefCell<String>,
    ofs: RefCell<u32>,
    num_items: RefCell<u32>,
    _io: RefCell<BytesReader>,
    f_tag_content: Cell<bool>,
    tag_content: RefCell<Option<NavParent2_Tag_TagContent>>,
}
#[derive(Debug, Clone)]
pub enum NavParent2_Tag_TagContent {
    NavParent2_Tag_TagChar(OptRc<NavParent2_Tag_TagChar>),
}
impl From<&NavParent2_Tag_TagContent> for OptRc<NavParent2_Tag_TagChar> {
    fn from(v: &NavParent2_Tag_TagContent) -> Self {
        if let NavParent2_Tag_TagContent::NavParent2_Tag_TagChar(x) = v {
            return x.clone();
        }
        panic!("expected NavParent2_Tag_TagContent::NavParent2_Tag_TagChar, got {:?}", v)
    }
}
impl From<OptRc<NavParent2_Tag_TagChar>> for NavParent2_Tag_TagContent {
    fn from(v: OptRc<NavParent2_Tag_TagChar>) -> Self {
        Self::NavParent2_Tag_TagChar(v)
    }
}
impl NavParent2_Tag_TagContent {
    pub fn content(&self) -> Ref<String> {
        match self {
            NavParent2_Tag_TagContent::NavParent2_Tag_TagChar(x) => x.content.borrow(),
        }
    }
}
impl KStruct for NavParent2_Tag {
    type Root = NavParent2;
    type Parent = NavParent2;

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
        *self_rc.name.borrow_mut() = bytes_to_str(&_io.read_bytes(4 as usize)?.into(), "ASCII")?;
        *self_rc.ofs.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.num_items.borrow_mut() = _io.read_u4le()?.into();
        Ok(())
    }
}
impl NavParent2_Tag {
    pub fn tag_content(
        &self
    ) -> KResult<Ref<Option<NavParent2_Tag_TagContent>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_tag_content.get() {
            return Ok(self.tag_content.borrow());
        }
        self.f_tag_content.set(true);
        let io = Clone::clone(&*_r._io());
        let _pos = io.pos();
        io.seek(*self.ofs() as usize)?;
        {
            let on = self.name();
            if *on == "RAHC" {
                let t = Self::read_into::<BytesReader, NavParent2_Tag_TagChar>(&io, Some(self._root.clone()), Some(self._self.clone()))?.into();
                *self.tag_content.borrow_mut() = Some(t);
            }
        }
        io.seek(_pos)?;
        Ok(self.tag_content.borrow())
    }
}
impl NavParent2_Tag {
    pub fn name(&self) -> Ref<String> {
        self.name.borrow()
    }
}
impl NavParent2_Tag {
    pub fn ofs(&self) -> Ref<u32> {
        self.ofs.borrow()
    }
}
impl NavParent2_Tag {
    pub fn num_items(&self) -> Ref<u32> {
        self.num_items.borrow()
    }
}
impl NavParent2_Tag {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct NavParent2_Tag_TagChar {
    pub _root: SharedType<NavParent2>,
    pub _parent: SharedType<NavParent2_Tag>,
    pub _self: SharedType<Self>,
    content: RefCell<String>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NavParent2_Tag_TagChar {
    type Root = NavParent2;
    type Parent = NavParent2_Tag;

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
        *self_rc.content.borrow_mut() = bytes_to_str(&_io.read_bytes(*_prc.as_ref().unwrap().num_items() as usize)?.into(), "ASCII")?;
        Ok(())
    }
}
impl NavParent2_Tag_TagChar {
}
impl NavParent2_Tag_TagChar {
    pub fn content(&self) -> Ref<String> {
        self.content.borrow()
    }
}
impl NavParent2_Tag_TagChar {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
