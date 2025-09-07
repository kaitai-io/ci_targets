// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.nio.charset.StandardCharsets;
import java.nio.charset.Charset;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;
import java.util.List;
import java.util.Arrays;

public class ParamsPassArrayStr extends KaitaiStruct.ReadWrite {
    public static ParamsPassArrayStr fromFile(String fileName) throws IOException {
        return new ParamsPassArrayStr(new ByteBufferKaitaiStream(fileName));
    }
    public ParamsPassArrayStr() {
        this(null, null, null);
    }

    public ParamsPassArrayStr(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ParamsPassArrayStr(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ParamsPassArrayStr(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ParamsPassArrayStr _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.strArray = new ArrayList<String>();
        for (int i = 0; i < 3; i++) {
            this.strArray.add(new String(this._io.readBytes(2), StandardCharsets.US_ASCII));
        }
        this.passStrArray = new WantsStrs(this._io, this, _root, strArray());
        this.passStrArray._read();
        this.passStrArrayCalc = new WantsStrs(this._io, this, _root, strArrayCalc());
        this.passStrArrayCalc._read();
        _dirty = false;
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.strArray.size(); i++) {
        }
        this.passStrArray._fetchInstances();
        this.passStrArrayCalc._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        for (int i = 0; i < this.strArray.size(); i++) {
            this._io.writeBytes((this.strArray.get(((Number) (i)).intValue())).getBytes(Charset.forName("ASCII")));
        }
        this.passStrArray._write_Seq(this._io);
        this.passStrArrayCalc._write_Seq(this._io);
    }

    public void _check() {
        if (this.strArray.size() != 3)
            throw new ConsistencyError("str_array", 3, this.strArray.size());
        for (int i = 0; i < this.strArray.size(); i++) {
            if ((this.strArray.get(((Number) (i)).intValue())).getBytes(Charset.forName("ASCII")).length != 2)
                throw new ConsistencyError("str_array", 2, (this.strArray.get(((Number) (i)).intValue())).getBytes(Charset.forName("ASCII")).length);
        }
        if (!Objects.equals(this.passStrArray._root(), _root()))
            throw new ConsistencyError("pass_str_array", _root(), this.passStrArray._root());
        if (!Objects.equals(this.passStrArray._parent(), this))
            throw new ConsistencyError("pass_str_array", this, this.passStrArray._parent());
        if (!Objects.equals(this.passStrArray.strs(), strArray()))
            throw new ConsistencyError("pass_str_array", strArray(), this.passStrArray.strs());
        if (!Objects.equals(this.passStrArrayCalc._root(), _root()))
            throw new ConsistencyError("pass_str_array_calc", _root(), this.passStrArrayCalc._root());
        if (!Objects.equals(this.passStrArrayCalc._parent(), this))
            throw new ConsistencyError("pass_str_array_calc", this, this.passStrArrayCalc._parent());
        if (!Objects.equals(this.passStrArrayCalc.strs(), strArrayCalc()))
            throw new ConsistencyError("pass_str_array_calc", strArrayCalc(), this.passStrArrayCalc.strs());
        _dirty = false;
    }
    public static class WantsStrs extends KaitaiStruct.ReadWrite {
        public WantsStrs(List<String> strs) {
            this(null, null, null, strs);
        }

        public WantsStrs(KaitaiStream _io, List<String> strs) {
            this(_io, null, null, strs);
        }

        public WantsStrs(KaitaiStream _io, ParamsPassArrayStr _parent, List<String> strs) {
            this(_io, _parent, null, strs);
        }

        public WantsStrs(KaitaiStream _io, ParamsPassArrayStr _parent, ParamsPassArrayStr _root, List<String> strs) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            this.strs = strs;
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
        private List<String> strs;
        private ParamsPassArrayStr _root;
        private ParamsPassArrayStr _parent;
        public List<String> strs() { return strs; }
        public void setStrs(List<String> _v) { _dirty = true; strs = _v; }
        public ParamsPassArrayStr _root() { return _root; }
        public void set_root(ParamsPassArrayStr _v) { _dirty = true; _root = _v; }
        public ParamsPassArrayStr _parent() { return _parent; }
        public void set_parent(ParamsPassArrayStr _v) { _dirty = true; _parent = _v; }
    }
    private List<String> strArrayCalc;
    public List<String> strArrayCalc() {
        if (this.strArrayCalc != null)
            return this.strArrayCalc;
        this.strArrayCalc = new ArrayList<String>(Arrays.asList("aB", "Cd"));
        return this.strArrayCalc;
    }
    public void _invalidateStrArrayCalc() { this.strArrayCalc = null; }
    private List<String> strArray;
    private WantsStrs passStrArray;
    private WantsStrs passStrArrayCalc;
    private ParamsPassArrayStr _root;
    private KaitaiStruct.ReadWrite _parent;
    public List<String> strArray() { return strArray; }
    public void setStrArray(List<String> _v) { _dirty = true; strArray = _v; }
    public WantsStrs passStrArray() { return passStrArray; }
    public void setPassStrArray(WantsStrs _v) { _dirty = true; passStrArray = _v; }
    public WantsStrs passStrArrayCalc() { return passStrArrayCalc; }
    public void setPassStrArrayCalc(WantsStrs _v) { _dirty = true; passStrArrayCalc = _v; }
    public ParamsPassArrayStr _root() { return _root; }
    public void set_root(ParamsPassArrayStr _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
