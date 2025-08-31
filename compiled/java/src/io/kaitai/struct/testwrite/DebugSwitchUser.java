// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import io.kaitai.struct.ConsistencyError;

public class DebugSwitchUser extends KaitaiStruct.ReadWrite {
    public Map<String, Integer> _attrStart = new HashMap<String, Integer>();
    public Map<String, Integer> _attrEnd = new HashMap<String, Integer>();
    public Map<String, List<Integer>> _arrStart = new HashMap<String, List<Integer>>();
    public Map<String, List<Integer>> _arrEnd = new HashMap<String, List<Integer>>();

    public static DebugSwitchUser fromFile(String fileName) throws IOException {
        return new DebugSwitchUser(new ByteBufferKaitaiStream(fileName));
    }
    public static String[] _seqFields = new String[] { "code", "data" };
    public DebugSwitchUser() {
        this(null, null, null);
    }

    public DebugSwitchUser(KaitaiStream _io) {
        this(_io, null, null);
    }

    public DebugSwitchUser(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public DebugSwitchUser(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, DebugSwitchUser _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        _attrStart.put("code", this._io.pos());
        this.code = this._io.readU1();
        _attrEnd.put("code", this._io.pos());
        _attrStart.put("data", this._io.pos());
        switch (code()) {
        case 1: {
            this.data = new One(this._io, this, _root);
            ((One) (this.data))._read();
            break;
        }
        case 2: {
            this.data = new Two(this._io, this, _root);
            ((Two) (this.data))._read();
            break;
        }
        }
        _attrEnd.put("data", this._io.pos());
    }

    public void _fetchInstances() {
        switch (code()) {
        case 1: {
            ((One) (this.data))._fetchInstances();
            break;
        }
        case 2: {
            ((Two) (this.data))._fetchInstances();
            break;
        }
        }
    }

    public void _write_Seq() {
        this._io.writeU1(this.code);
        switch (code()) {
        case 1: {
            ((One) (this.data))._write_Seq(this._io);
            break;
        }
        case 2: {
            ((Two) (this.data))._write_Seq(this._io);
            break;
        }
        }
    }

    public void _check() {
        switch (code()) {
        case 1: {
            if (!Objects.equals(((DebugSwitchUser.One) (this.data))._root(), _root()))
                throw new ConsistencyError("data", ((DebugSwitchUser.One) (this.data))._root(), _root());
            if (!Objects.equals(((DebugSwitchUser.One) (this.data))._parent(), this))
                throw new ConsistencyError("data", ((DebugSwitchUser.One) (this.data))._parent(), this);
            break;
        }
        case 2: {
            if (!Objects.equals(((DebugSwitchUser.Two) (this.data))._root(), _root()))
                throw new ConsistencyError("data", ((DebugSwitchUser.Two) (this.data))._root(), _root());
            if (!Objects.equals(((DebugSwitchUser.Two) (this.data))._parent(), this))
                throw new ConsistencyError("data", ((DebugSwitchUser.Two) (this.data))._parent(), this);
            break;
        }
        }
    }
    public static class One extends KaitaiStruct.ReadWrite {
        public Map<String, Integer> _attrStart = new HashMap<String, Integer>();
        public Map<String, Integer> _attrEnd = new HashMap<String, Integer>();
        public Map<String, List<Integer>> _arrStart = new HashMap<String, List<Integer>>();
        public Map<String, List<Integer>> _arrEnd = new HashMap<String, List<Integer>>();

        public static One fromFile(String fileName) throws IOException {
            return new One(new ByteBufferKaitaiStream(fileName));
        }
        public static String[] _seqFields = new String[] { "val" };
        public One() {
            this(null, null, null);
        }

        public One(KaitaiStream _io) {
            this(_io, null, null);
        }

        public One(KaitaiStream _io, DebugSwitchUser _parent) {
            this(_io, _parent, null);
        }

        public One(KaitaiStream _io, DebugSwitchUser _parent, DebugSwitchUser _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            _attrStart.put("val", this._io.pos());
            this.val = this._io.readS2le();
            _attrEnd.put("val", this._io.pos());
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            this._io.writeS2le(this.val);
        }

        public void _check() {
        }
        private short val;
        private DebugSwitchUser _root;
        private DebugSwitchUser _parent;
        public short val() { return val; }
        public void setVal(short _v) { val = _v; }
        public DebugSwitchUser _root() { return _root; }
        public void set_root(DebugSwitchUser _v) { _root = _v; }
        public DebugSwitchUser _parent() { return _parent; }
        public void set_parent(DebugSwitchUser _v) { _parent = _v; }
    }
    public static class Two extends KaitaiStruct.ReadWrite {
        public Map<String, Integer> _attrStart = new HashMap<String, Integer>();
        public Map<String, Integer> _attrEnd = new HashMap<String, Integer>();
        public Map<String, List<Integer>> _arrStart = new HashMap<String, List<Integer>>();
        public Map<String, List<Integer>> _arrEnd = new HashMap<String, List<Integer>>();

        public static Two fromFile(String fileName) throws IOException {
            return new Two(new ByteBufferKaitaiStream(fileName));
        }
        public static String[] _seqFields = new String[] { "val" };
        public Two() {
            this(null, null, null);
        }

        public Two(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Two(KaitaiStream _io, DebugSwitchUser _parent) {
            this(_io, _parent, null);
        }

        public Two(KaitaiStream _io, DebugSwitchUser _parent, DebugSwitchUser _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            _attrStart.put("val", this._io.pos());
            this.val = this._io.readU2le();
            _attrEnd.put("val", this._io.pos());
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            this._io.writeU2le(this.val);
        }

        public void _check() {
        }
        private int val;
        private DebugSwitchUser _root;
        private DebugSwitchUser _parent;
        public int val() { return val; }
        public void setVal(int _v) { val = _v; }
        public DebugSwitchUser _root() { return _root; }
        public void set_root(DebugSwitchUser _v) { _root = _v; }
        public DebugSwitchUser _parent() { return _parent; }
        public void set_parent(DebugSwitchUser _v) { _parent = _v; }
    }
    private int code;
    private KaitaiStruct.ReadWrite data;
    private DebugSwitchUser _root;
    private KaitaiStruct.ReadWrite _parent;
    public int code() { return code; }
    public void setCode(int _v) { code = _v; }
    public KaitaiStruct.ReadWrite data() { return data; }
    public void setData(KaitaiStruct.ReadWrite _v) { data = _v; }
    public DebugSwitchUser _root() { return _root; }
    public void set_root(DebugSwitchUser _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
