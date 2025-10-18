// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;
import java.util.List;

public class ParamsPassArrayUsertype extends KaitaiStruct.ReadWrite {
    public static ParamsPassArrayUsertype fromFile(String fileName) throws IOException {
        return new ParamsPassArrayUsertype(new ByteBufferKaitaiStream(fileName));
    }
    public ParamsPassArrayUsertype() {
        this(null, null, null);
    }

    public ParamsPassArrayUsertype(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ParamsPassArrayUsertype(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ParamsPassArrayUsertype(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ParamsPassArrayUsertype _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.blocks = new ArrayList<Block>();
        for (int i = 0; i < 2; i++) {
            Block _t_blocks = new Block(this._io, this, _root);
            try {
                _t_blocks._read();
            } finally {
                this.blocks.add(_t_blocks);
            }
        }
        this.passBlocks = new ParamType(this._io, this, _root, blocks());
        this.passBlocks._read();
        _dirty = false;
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.blocks.size(); i++) {
            this.blocks.get(((Number) (i)).intValue())._fetchInstances();
        }
        this.passBlocks._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        for (int i = 0; i < this.blocks.size(); i++) {
            this.blocks.get(((Number) (i)).intValue())._write_Seq(this._io);
        }
        this.passBlocks._write_Seq(this._io);
    }

    public void _check() {
        if (this.blocks.size() != 2)
            throw new ConsistencyError("blocks", 2, this.blocks.size());
        for (int i = 0; i < this.blocks.size(); i++) {
            if (!Objects.equals(this.blocks.get(((Number) (i)).intValue())._root(), _root()))
                throw new ConsistencyError("blocks", _root(), this.blocks.get(((Number) (i)).intValue())._root());
            if (!Objects.equals(this.blocks.get(((Number) (i)).intValue())._parent(), this))
                throw new ConsistencyError("blocks", this, this.blocks.get(((Number) (i)).intValue())._parent());
        }
        if (!Objects.equals(this.passBlocks._root(), _root()))
            throw new ConsistencyError("pass_blocks", _root(), this.passBlocks._root());
        if (!Objects.equals(this.passBlocks._parent(), this))
            throw new ConsistencyError("pass_blocks", this, this.passBlocks._parent());
        if (!Objects.equals(this.passBlocks.bar(), blocks()))
            throw new ConsistencyError("pass_blocks", blocks(), this.passBlocks.bar());
        _dirty = false;
    }
    public static class Block extends KaitaiStruct.ReadWrite {
        public static Block fromFile(String fileName) throws IOException {
            return new Block(new ByteBufferKaitaiStream(fileName));
        }
        public Block() {
            this(null, null, null);
        }

        public Block(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Block(KaitaiStream _io, ParamsPassArrayUsertype _parent) {
            this(_io, _parent, null);
        }

        public Block(KaitaiStream _io, ParamsPassArrayUsertype _parent, ParamsPassArrayUsertype _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.foo = this._io.readU1();
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeU1(this.foo);
        }

        public void _check() {
            _dirty = false;
        }
        public int foo() { return foo; }
        public void setFoo(int _v) { _dirty = true; foo = _v; }
        public ParamsPassArrayUsertype _root() { return _root; }
        public void set_root(ParamsPassArrayUsertype _v) { _dirty = true; _root = _v; }
        public ParamsPassArrayUsertype _parent() { return _parent; }
        public void set_parent(ParamsPassArrayUsertype _v) { _dirty = true; _parent = _v; }
        private int foo;
        private ParamsPassArrayUsertype _root;
        private ParamsPassArrayUsertype _parent;
    }
    public static class ParamType extends KaitaiStruct.ReadWrite {
        public ParamType(List<Block> bar) {
            this(null, null, null, bar);
        }

        public ParamType(KaitaiStream _io, List<Block> bar) {
            this(_io, null, null, bar);
        }

        public ParamType(KaitaiStream _io, ParamsPassArrayUsertype _parent, List<Block> bar) {
            this(_io, _parent, null, bar);
        }

        public ParamType(KaitaiStream _io, ParamsPassArrayUsertype _parent, ParamsPassArrayUsertype _root, List<Block> bar) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            this.bar = bar;
        }
        public void _read() {
            this.one = this._io.readBytes(bar().get(((int) 0)).foo());
            this.two = this._io.readBytes(bar().get(((int) 1)).foo());
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeBytes(this.one);
            this._io.writeBytes(this.two);
        }

        public void _check() {
            if (this.one.length != bar().get(((int) 0)).foo())
                throw new ConsistencyError("one", bar().get(((int) 0)).foo(), this.one.length);
            if (this.two.length != bar().get(((int) 1)).foo())
                throw new ConsistencyError("two", bar().get(((int) 1)).foo(), this.two.length);
            _dirty = false;
        }
        public byte[] one() { return one; }
        public void setOne(byte[] _v) { _dirty = true; one = _v; }
        public byte[] two() { return two; }
        public void setTwo(byte[] _v) { _dirty = true; two = _v; }
        public List<Block> bar() { return bar; }
        public void setBar(List<Block> _v) { _dirty = true; bar = _v; }
        public ParamsPassArrayUsertype _root() { return _root; }
        public void set_root(ParamsPassArrayUsertype _v) { _dirty = true; _root = _v; }
        public ParamsPassArrayUsertype _parent() { return _parent; }
        public void set_parent(ParamsPassArrayUsertype _v) { _dirty = true; _parent = _v; }
        private byte[] one;
        private byte[] two;
        private List<Block> bar;
        private ParamsPassArrayUsertype _root;
        private ParamsPassArrayUsertype _parent;
    }
    public List<Block> blocks() { return blocks; }
    public void setBlocks(List<Block> _v) { _dirty = true; blocks = _v; }
    public ParamType passBlocks() { return passBlocks; }
    public void setPassBlocks(ParamType _v) { _dirty = true; passBlocks = _v; }
    public ParamsPassArrayUsertype _root() { return _root; }
    public void set_root(ParamsPassArrayUsertype _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private List<Block> blocks;
    private ParamType passBlocks;
    private ParamsPassArrayUsertype _root;
    private KaitaiStruct.ReadWrite _parent;
}
