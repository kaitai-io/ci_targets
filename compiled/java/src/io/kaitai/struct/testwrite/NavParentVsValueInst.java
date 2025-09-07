// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.charset.Charset;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;

public class NavParentVsValueInst extends KaitaiStruct.ReadWrite {
    public static NavParentVsValueInst fromFile(String fileName) throws IOException {
        return new NavParentVsValueInst(new ByteBufferKaitaiStream(fileName));
    }
    public NavParentVsValueInst() {
        this(null, null, null);
    }

    public NavParentVsValueInst(KaitaiStream _io) {
        this(_io, null, null);
    }

    public NavParentVsValueInst(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public NavParentVsValueInst(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, NavParentVsValueInst _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.s1 = new String(this._io.readBytesTerm((byte) 124, false, true, true), StandardCharsets.UTF_8);
        this.child = new ChildObj(this._io, this, _root);
        this.child._read();
        _dirty = false;
    }

    public void _fetchInstances() {
        this.child._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeBytes((this.s1).getBytes(Charset.forName("UTF-8")));
        this._io.writeU1(124);
        this.child._write_Seq(this._io);
    }

    public void _check() {
        if (KaitaiStream.byteArrayIndexOf((this.s1).getBytes(Charset.forName("UTF-8")), ((byte) 124)) != -1)
            throw new ConsistencyError("s1", -1, KaitaiStream.byteArrayIndexOf((this.s1).getBytes(Charset.forName("UTF-8")), ((byte) 124)));
        if (!Objects.equals(this.child._root(), _root()))
            throw new ConsistencyError("child", _root(), this.child._root());
        if (!Objects.equals(this.child._parent(), this))
            throw new ConsistencyError("child", this, this.child._parent());
        _dirty = false;
    }
    public static class ChildObj extends KaitaiStruct.ReadWrite {
        public static ChildObj fromFile(String fileName) throws IOException {
            return new ChildObj(new ByteBufferKaitaiStream(fileName));
        }
        public ChildObj() {
            this(null, null, null);
        }

        public ChildObj(KaitaiStream _io) {
            this(_io, null, null);
        }

        public ChildObj(KaitaiStream _io, NavParentVsValueInst _parent) {
            this(_io, _parent, null);
        }

        public ChildObj(KaitaiStream _io, NavParentVsValueInst _parent, NavParentVsValueInst _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
        }

        public void _check() {
            _dirty = false;
        }
        private Boolean doSomething;
        public Boolean doSomething() {
            if (this.doSomething != null)
                return this.doSomething;
            this.doSomething = (_parent().s1().equals("foo") ? true : false);
            return this.doSomething;
        }
        public void _invalidateDoSomething() { this.doSomething = null; }
        private NavParentVsValueInst _root;
        private NavParentVsValueInst _parent;
        public NavParentVsValueInst _root() { return _root; }
        public void set_root(NavParentVsValueInst _v) { _dirty = true; _root = _v; }
        public NavParentVsValueInst _parent() { return _parent; }
        public void set_parent(NavParentVsValueInst _v) { _dirty = true; _parent = _v; }
    }
    private String s1;
    private ChildObj child;
    private NavParentVsValueInst _root;
    private KaitaiStruct.ReadWrite _parent;
    public String s1() { return s1; }
    public void setS1(String _v) { _dirty = true; s1 = _v; }
    public ChildObj child() { return child; }
    public void setChild(ChildObj _v) { _dirty = true; child = _v; }
    public NavParentVsValueInst _root() { return _root; }
    public void set_root(NavParentVsValueInst _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
