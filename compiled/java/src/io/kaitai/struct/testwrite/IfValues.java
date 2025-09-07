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

public class IfValues extends KaitaiStruct.ReadWrite {
    public static IfValues fromFile(String fileName) throws IOException {
        return new IfValues(new ByteBufferKaitaiStream(fileName));
    }
    public IfValues() {
        this(null, null, null);
    }

    public IfValues(KaitaiStream _io) {
        this(_io, null, null);
    }

    public IfValues(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public IfValues(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, IfValues _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.codes = new ArrayList<Code>();
        for (int i = 0; i < 3; i++) {
            Code _t_codes = new Code(this._io, this, _root);
            try {
                _t_codes._read();
            } finally {
                this.codes.add(_t_codes);
            }
        }
        _dirty = false;
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.codes.size(); i++) {
            this.codes.get(((Number) (i)).intValue())._fetchInstances();
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        for (int i = 0; i < this.codes.size(); i++) {
            this.codes.get(((Number) (i)).intValue())._write_Seq(this._io);
        }
    }

    public void _check() {
        if (this.codes.size() != 3)
            throw new ConsistencyError("codes", 3, this.codes.size());
        for (int i = 0; i < this.codes.size(); i++) {
            if (!Objects.equals(this.codes.get(((Number) (i)).intValue())._root(), _root()))
                throw new ConsistencyError("codes", _root(), this.codes.get(((Number) (i)).intValue())._root());
            if (!Objects.equals(this.codes.get(((Number) (i)).intValue())._parent(), this))
                throw new ConsistencyError("codes", this, this.codes.get(((Number) (i)).intValue())._parent());
        }
        _dirty = false;
    }
    public static class Code extends KaitaiStruct.ReadWrite {
        public static Code fromFile(String fileName) throws IOException {
            return new Code(new ByteBufferKaitaiStream(fileName));
        }
        public Code() {
            this(null, null, null);
        }

        public Code(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Code(KaitaiStream _io, IfValues _parent) {
            this(_io, _parent, null);
        }

        public Code(KaitaiStream _io, IfValues _parent, IfValues _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.opcode = this._io.readU1();
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeU1(this.opcode);
        }

        public void _check() {
            _dirty = false;
        }
        private Integer halfOpcode;
        public Integer halfOpcode() {
            if (this.halfOpcode != null)
                return this.halfOpcode;
            if (KaitaiStream.mod(opcode(), 2) == 0) {
                this.halfOpcode = ((Number) (opcode() / 2)).intValue();
            }
            return this.halfOpcode;
        }
        public void _invalidateHalfOpcode() { this.halfOpcode = null; }
        private int opcode;
        private IfValues _root;
        private IfValues _parent;
        public int opcode() { return opcode; }
        public void setOpcode(int _v) { _dirty = true; opcode = _v; }
        public IfValues _root() { return _root; }
        public void set_root(IfValues _v) { _dirty = true; _root = _v; }
        public IfValues _parent() { return _parent; }
        public void set_parent(IfValues _v) { _dirty = true; _parent = _v; }
    }
    private List<Code> codes;
    private IfValues _root;
    private KaitaiStruct.ReadWrite _parent;
    public List<Code> codes() { return codes; }
    public void setCodes(List<Code> _v) { _dirty = true; codes = _v; }
    public IfValues _root() { return _root; }
    public void set_root(IfValues _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
