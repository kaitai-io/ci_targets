// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Objects;
import io.kaitai.struct.ConsistencyError;

public class RecursiveOne extends KaitaiStruct.ReadWrite {
    public static RecursiveOne fromFile(String fileName) throws IOException {
        return new RecursiveOne(new ByteBufferKaitaiStream(fileName));
    }
    public RecursiveOne() {
        this(null, null, null);
    }

    public RecursiveOne(KaitaiStream _io) {
        this(_io, null, null);
    }

    public RecursiveOne(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public RecursiveOne(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, RecursiveOne _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.one = this._io.readU1();
        switch (one() & 3) {
        case 0: {
            this.next = new RecursiveOne(this._io, this, _root);
            ((RecursiveOne) (this.next))._read();
            break;
        }
        case 1: {
            this.next = new RecursiveOne(this._io, this, _root);
            ((RecursiveOne) (this.next))._read();
            break;
        }
        case 2: {
            this.next = new RecursiveOne(this._io, this, _root);
            ((RecursiveOne) (this.next))._read();
            break;
        }
        case 3: {
            this.next = new Fini(this._io, this, _root);
            ((Fini) (this.next))._read();
            break;
        }
        }
        _dirty = false;
    }

    public void _fetchInstances() {
        switch (one() & 3) {
        case 0: {
            ((RecursiveOne) (this.next))._fetchInstances();
            break;
        }
        case 1: {
            ((RecursiveOne) (this.next))._fetchInstances();
            break;
        }
        case 2: {
            ((RecursiveOne) (this.next))._fetchInstances();
            break;
        }
        case 3: {
            ((Fini) (this.next))._fetchInstances();
            break;
        }
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeU1(this.one);
        switch (one() & 3) {
        case 0: {
            ((RecursiveOne) (this.next))._write_Seq(this._io);
            break;
        }
        case 1: {
            ((RecursiveOne) (this.next))._write_Seq(this._io);
            break;
        }
        case 2: {
            ((RecursiveOne) (this.next))._write_Seq(this._io);
            break;
        }
        case 3: {
            ((Fini) (this.next))._write_Seq(this._io);
            break;
        }
        }
    }

    public void _check() {
        switch (one() & 3) {
        case 0: {
            if (!Objects.equals(((RecursiveOne) (this.next))._root(), _root()))
                throw new ConsistencyError("next", ((RecursiveOne) (this.next))._root(), _root());
            if (!Objects.equals(((RecursiveOne) (this.next))._parent(), this))
                throw new ConsistencyError("next", ((RecursiveOne) (this.next))._parent(), this);
            break;
        }
        case 1: {
            if (!Objects.equals(((RecursiveOne) (this.next))._root(), _root()))
                throw new ConsistencyError("next", ((RecursiveOne) (this.next))._root(), _root());
            if (!Objects.equals(((RecursiveOne) (this.next))._parent(), this))
                throw new ConsistencyError("next", ((RecursiveOne) (this.next))._parent(), this);
            break;
        }
        case 2: {
            if (!Objects.equals(((RecursiveOne) (this.next))._root(), _root()))
                throw new ConsistencyError("next", ((RecursiveOne) (this.next))._root(), _root());
            if (!Objects.equals(((RecursiveOne) (this.next))._parent(), this))
                throw new ConsistencyError("next", ((RecursiveOne) (this.next))._parent(), this);
            break;
        }
        case 3: {
            if (!Objects.equals(((RecursiveOne.Fini) (this.next))._root(), _root()))
                throw new ConsistencyError("next", ((RecursiveOne.Fini) (this.next))._root(), _root());
            if (!Objects.equals(((RecursiveOne.Fini) (this.next))._parent(), this))
                throw new ConsistencyError("next", ((RecursiveOne.Fini) (this.next))._parent(), this);
            break;
        }
        }
        _dirty = false;
    }
    public static class Fini extends KaitaiStruct.ReadWrite {
        public static Fini fromFile(String fileName) throws IOException {
            return new Fini(new ByteBufferKaitaiStream(fileName));
        }
        public Fini() {
            this(null, null, null);
        }

        public Fini(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Fini(KaitaiStream _io, RecursiveOne _parent) {
            this(_io, _parent, null);
        }

        public Fini(KaitaiStream _io, RecursiveOne _parent, RecursiveOne _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.finisher = this._io.readU2le();
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeU2le(this.finisher);
        }

        public void _check() {
            _dirty = false;
        }
        private int finisher;
        private RecursiveOne _root;
        private RecursiveOne _parent;
        public int finisher() { return finisher; }
        public void setFinisher(int _v) { _dirty = true; finisher = _v; }
        public RecursiveOne _root() { return _root; }
        public void set_root(RecursiveOne _v) { _dirty = true; _root = _v; }
        public RecursiveOne _parent() { return _parent; }
        public void set_parent(RecursiveOne _v) { _dirty = true; _parent = _v; }
    }
    private int one;
    private KaitaiStruct.ReadWrite next;
    private RecursiveOne _root;
    private KaitaiStruct.ReadWrite _parent;
    public int one() { return one; }
    public void setOne(int _v) { _dirty = true; one = _v; }
    public KaitaiStruct.ReadWrite next() { return next; }
    public void setNext(KaitaiStruct.ReadWrite _v) { _dirty = true; next = _v; }
    public RecursiveOne _root() { return _root; }
    public void set_root(RecursiveOne _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
