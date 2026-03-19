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

public class SwitchRepeatExpr extends KaitaiStruct.ReadWrite {
    public static SwitchRepeatExpr fromFile(String fileName) throws IOException {
        return new SwitchRepeatExpr(new ByteBufferKaitaiStream(fileName));
    }
    public SwitchRepeatExpr() {
        this(null, null, null);
    }

    public SwitchRepeatExpr(KaitaiStream _io) {
        this(_io, null, null);
    }

    public SwitchRepeatExpr(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public SwitchRepeatExpr(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, SwitchRepeatExpr _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.codes = new ArrayList<Integer>();
        for (int i = 0; i < 3; i++) {
            this.codes.add(this._io.readU1());
        }
        this._raw_body = new ArrayList<byte[]>();
        this.body = new ArrayList<Object>();
        for (int i = 0; i < 3; i++) {
            switch (codes().get(((Number) (i)).intValue())) {
            case 1: {
                this._raw_body.add(this._io.readBytes(4));
                KaitaiStream _io__raw_body = new ByteBufferKaitaiStream(this._raw_body.get(i));
                One _t_body = new One(_io__raw_body, this, _root);
                try {
                    ((One) (_t_body))._read();
                } finally {
                    this.body.add(_t_body);
                }
                break;
            }
            case 2: {
                this._raw_body.add(this._io.readBytes(4));
                KaitaiStream _io__raw_body = new ByteBufferKaitaiStream(this._raw_body.get(i));
                One _t_body = new One(_io__raw_body, this, _root);
                try {
                    ((One) (_t_body))._read();
                } finally {
                    this.body.add(_t_body);
                }
                break;
            }
            case 7: {
                this._raw_body.add(this._io.readBytes(4));
                KaitaiStream _io__raw_body = new ByteBufferKaitaiStream(this._raw_body.get(i));
                Two _t_body = new Two(_io__raw_body, this, _root);
                try {
                    ((Two) (_t_body))._read();
                } finally {
                    this.body.add(_t_body);
                }
                break;
            }
            default: {
                this.body.add(this._io.readBytes(4));
                break;
            }
            }
        }
        _dirty = false;
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.codes.size(); i++) {
        }
        for (int i = 0; i < this.body.size(); i++) {
            switch (codes().get(((Number) (i)).intValue())) {
            case 1: {
                ((One) (this.body.get(((Number) (i)).intValue())))._fetchInstances();
                break;
            }
            case 2: {
                ((One) (this.body.get(((Number) (i)).intValue())))._fetchInstances();
                break;
            }
            case 7: {
                ((Two) (this.body.get(((Number) (i)).intValue())))._fetchInstances();
                break;
            }
            default: {
                break;
            }
            }
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        for (int i = 0; i < this.codes.size(); i++) {
            this._io.writeU1(this.codes.get(((Number) (i)).intValue()));
        }
        this._raw_body = new ArrayList<byte[]>();
        for (int i = 0; i < this.body.size(); i++) {
            switch (codes().get(((Number) (i)).intValue())) {
            case 1: {
                final KaitaiStream _io__raw_body = new ByteBufferKaitaiStream(4);
                this._io.addChildStream(_io__raw_body);
                {
                    long _pos2 = this._io.pos();
                    this._io.seek(this._io.pos() + (4));
                    final SwitchRepeatExpr _this = this;
                    final int _i = i;
                    _io__raw_body.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                        @Override
                        protected void write(KaitaiStream parent) {
                            _this._raw_body.add(_io__raw_body.toByteArray());
                            if (((byte[]) (_this._raw_body.get(((Number) (_i)).intValue()))).length != 4)
                                throw new ConsistencyError("raw(body)", 4, ((byte[]) (_this._raw_body.get(((Number) (_i)).intValue()))).length);
                            parent.writeBytes(((byte[]) (((byte[]) (_this._raw_body.get(((Number) (_i)).intValue()))))));
                        }
                    });
                }
                ((One) (this.body.get(((Number) (i)).intValue())))._write_Seq(_io__raw_body);
                break;
            }
            case 2: {
                final KaitaiStream _io__raw_body = new ByteBufferKaitaiStream(4);
                this._io.addChildStream(_io__raw_body);
                {
                    long _pos2 = this._io.pos();
                    this._io.seek(this._io.pos() + (4));
                    final SwitchRepeatExpr _this = this;
                    final int _i = i;
                    _io__raw_body.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                        @Override
                        protected void write(KaitaiStream parent) {
                            _this._raw_body.add(_io__raw_body.toByteArray());
                            if (((byte[]) (_this._raw_body.get(((Number) (_i)).intValue()))).length != 4)
                                throw new ConsistencyError("raw(body)", 4, ((byte[]) (_this._raw_body.get(((Number) (_i)).intValue()))).length);
                            parent.writeBytes(((byte[]) (((byte[]) (_this._raw_body.get(((Number) (_i)).intValue()))))));
                        }
                    });
                }
                ((One) (this.body.get(((Number) (i)).intValue())))._write_Seq(_io__raw_body);
                break;
            }
            case 7: {
                final KaitaiStream _io__raw_body = new ByteBufferKaitaiStream(4);
                this._io.addChildStream(_io__raw_body);
                {
                    long _pos2 = this._io.pos();
                    this._io.seek(this._io.pos() + (4));
                    final SwitchRepeatExpr _this = this;
                    final int _i = i;
                    _io__raw_body.setWriteBackHandler(new KaitaiStream.WriteBackHandler(_pos2) {
                        @Override
                        protected void write(KaitaiStream parent) {
                            _this._raw_body.add(_io__raw_body.toByteArray());
                            if (((byte[]) (_this._raw_body.get(((Number) (_i)).intValue()))).length != 4)
                                throw new ConsistencyError("raw(body)", 4, ((byte[]) (_this._raw_body.get(((Number) (_i)).intValue()))).length);
                            parent.writeBytes(((byte[]) (((byte[]) (_this._raw_body.get(((Number) (_i)).intValue()))))));
                        }
                    });
                }
                ((Two) (this.body.get(((Number) (i)).intValue())))._write_Seq(_io__raw_body);
                break;
            }
            default: {
                this._io.writeBytes(((byte[]) (((byte[]) (this.body.get(((Number) (i)).intValue()))))));
                break;
            }
            }
        }
    }

    public void _check() {
        if (this.codes.size() != 3)
            throw new ConsistencyError("codes", 3, this.codes.size());
        for (int i = 0; i < this.codes.size(); i++) {
        }
        if (this.body.size() != 3)
            throw new ConsistencyError("body", 3, this.body.size());
        for (int i = 0; i < this.body.size(); i++) {
            switch (codes().get(((Number) (i)).intValue())) {
            case 1: {
                if (!Objects.equals(((SwitchRepeatExpr.One) (this.body.get(((Number) (i)).intValue())))._root(), _root()))
                    throw new ConsistencyError("body", _root(), ((SwitchRepeatExpr.One) (this.body.get(((Number) (i)).intValue())))._root());
                if (!Objects.equals(((SwitchRepeatExpr.One) (this.body.get(((Number) (i)).intValue())))._parent(), this))
                    throw new ConsistencyError("body", this, ((SwitchRepeatExpr.One) (this.body.get(((Number) (i)).intValue())))._parent());
                break;
            }
            case 2: {
                if (!Objects.equals(((SwitchRepeatExpr.One) (this.body.get(((Number) (i)).intValue())))._root(), _root()))
                    throw new ConsistencyError("body", _root(), ((SwitchRepeatExpr.One) (this.body.get(((Number) (i)).intValue())))._root());
                if (!Objects.equals(((SwitchRepeatExpr.One) (this.body.get(((Number) (i)).intValue())))._parent(), this))
                    throw new ConsistencyError("body", this, ((SwitchRepeatExpr.One) (this.body.get(((Number) (i)).intValue())))._parent());
                break;
            }
            case 7: {
                if (!Objects.equals(((SwitchRepeatExpr.Two) (this.body.get(((Number) (i)).intValue())))._root(), _root()))
                    throw new ConsistencyError("body", _root(), ((SwitchRepeatExpr.Two) (this.body.get(((Number) (i)).intValue())))._root());
                if (!Objects.equals(((SwitchRepeatExpr.Two) (this.body.get(((Number) (i)).intValue())))._parent(), this))
                    throw new ConsistencyError("body", this, ((SwitchRepeatExpr.Two) (this.body.get(((Number) (i)).intValue())))._parent());
                break;
            }
            default: {
                if (((byte[]) (this.body.get(((Number) (i)).intValue()))).length != 4)
                    throw new ConsistencyError("body", 4, ((byte[]) (this.body.get(((Number) (i)).intValue()))).length);
                break;
            }
            }
        }
        _dirty = false;
    }
    public static class One extends KaitaiStruct.ReadWrite {
        public static One fromFile(String fileName) throws IOException {
            return new One(new ByteBufferKaitaiStream(fileName));
        }
        public One() {
            this(null, null, null);
        }

        public One(KaitaiStream _io) {
            this(_io, null, null);
        }

        public One(KaitaiStream _io, SwitchRepeatExpr _parent) {
            this(_io, _parent, null);
        }

        public One(KaitaiStream _io, SwitchRepeatExpr _parent, SwitchRepeatExpr _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.first = this._io.readBytesFull();
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeBytes(this.first);
            if (!(this._io.isEof()))
                throw new ConsistencyError("first", 0, this._io.size() - this._io.pos());
        }

        public void _check() {
            _dirty = false;
        }
        public byte[] first() { return first; }
        public void setFirst(byte[] _v) { _dirty = true; first = _v; }
        public SwitchRepeatExpr _root() { return _root; }
        public void set_root(SwitchRepeatExpr _v) { _dirty = true; _root = _v; }
        public SwitchRepeatExpr _parent() { return _parent; }
        public void set_parent(SwitchRepeatExpr _v) { _dirty = true; _parent = _v; }
        private byte[] first;
        private SwitchRepeatExpr _root;
        private SwitchRepeatExpr _parent;
    }
    public static class Two extends KaitaiStruct.ReadWrite {
        public static Two fromFile(String fileName) throws IOException {
            return new Two(new ByteBufferKaitaiStream(fileName));
        }
        public Two() {
            this(null, null, null);
        }

        public Two(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Two(KaitaiStream _io, SwitchRepeatExpr _parent) {
            this(_io, _parent, null);
        }

        public Two(KaitaiStream _io, SwitchRepeatExpr _parent, SwitchRepeatExpr _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.second = this._io.readBytesFull();
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeBytes(this.second);
            if (!(this._io.isEof()))
                throw new ConsistencyError("second", 0, this._io.size() - this._io.pos());
        }

        public void _check() {
            _dirty = false;
        }
        public byte[] second() { return second; }
        public void setSecond(byte[] _v) { _dirty = true; second = _v; }
        public SwitchRepeatExpr _root() { return _root; }
        public void set_root(SwitchRepeatExpr _v) { _dirty = true; _root = _v; }
        public SwitchRepeatExpr _parent() { return _parent; }
        public void set_parent(SwitchRepeatExpr _v) { _dirty = true; _parent = _v; }
        private byte[] second;
        private SwitchRepeatExpr _root;
        private SwitchRepeatExpr _parent;
    }
    public List<Integer> codes() { return codes; }
    public void setCodes(List<Integer> _v) { _dirty = true; codes = _v; }
    public List<Object> body() { return body; }
    public void setBody(List<Object> _v) { _dirty = true; body = _v; }
    public SwitchRepeatExpr _root() { return _root; }
    public void set_root(SwitchRepeatExpr _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    public List<byte[]> _raw_body() { return _raw_body; }
    public void set_raw_Body(List<byte[]> _v) { _dirty = true; _raw_body = _v; }
    private List<Integer> codes;
    private List<Object> body;
    private SwitchRepeatExpr _root;
    private KaitaiStruct.ReadWrite _parent;
    private List<byte[]> _raw_body;
}
