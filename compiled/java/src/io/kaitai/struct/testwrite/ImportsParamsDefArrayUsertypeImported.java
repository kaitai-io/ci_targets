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

public class ImportsParamsDefArrayUsertypeImported extends KaitaiStruct.ReadWrite {
    public static ImportsParamsDefArrayUsertypeImported fromFile(String fileName) throws IOException {
        return new ImportsParamsDefArrayUsertypeImported(new ByteBufferKaitaiStream(fileName));
    }
    public ImportsParamsDefArrayUsertypeImported() {
        this(null, null, null);
    }

    public ImportsParamsDefArrayUsertypeImported(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ImportsParamsDefArrayUsertypeImported(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ImportsParamsDefArrayUsertypeImported(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ImportsParamsDefArrayUsertypeImported _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.hws = new ArrayList<HelloWorld>();
        for (int i = 0; i < 2; i++) {
            HelloWorld _t_hws = new HelloWorld(this._io);
            try {
                _t_hws._read();
            } finally {
                this.hws.add(_t_hws);
            }
        }
        this.two = new ParamsDefArrayUsertypeImported(this._io, hws());
        this.two._read();
        _dirty = false;
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.hws.size(); i++) {
            this.hws.get(((Number) (i)).intValue())._fetchInstances();
        }
        this.two._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        for (int i = 0; i < this.hws.size(); i++) {
            this.hws.get(((Number) (i)).intValue())._write_Seq(this._io);
        }
        this.two._write_Seq(this._io);
    }

    public void _check() {
        if (this.hws.size() != 2)
            throw new ConsistencyError("hws", 2, this.hws.size());
        for (int i = 0; i < this.hws.size(); i++) {
        }
        if (!Objects.equals(this.two.hwsParam(), hws()))
            throw new ConsistencyError("two", hws(), this.two.hwsParam());
        _dirty = false;
    }
    private List<HelloWorld> hws;
    private ParamsDefArrayUsertypeImported two;
    private ImportsParamsDefArrayUsertypeImported _root;
    private KaitaiStruct.ReadWrite _parent;
    public List<HelloWorld> hws() { return hws; }
    public void setHws(List<HelloWorld> _v) { _dirty = true; hws = _v; }
    public ParamsDefArrayUsertypeImported two() { return two; }
    public void setTwo(ParamsDefArrayUsertypeImported _v) { _dirty = true; two = _v; }
    public ImportsParamsDefArrayUsertypeImported _root() { return _root; }
    public void set_root(ImportsParamsDefArrayUsertypeImported _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
