// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class ImportsParamsDefArrayUsertypeImported extends KaitaiStruct {
    public static ImportsParamsDefArrayUsertypeImported fromFile(String fileName) throws IOException {
        return new ImportsParamsDefArrayUsertypeImported(new ByteBufferKaitaiStream(fileName));
    }

    public ImportsParamsDefArrayUsertypeImported(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ImportsParamsDefArrayUsertypeImported(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ImportsParamsDefArrayUsertypeImported(KaitaiStream _io, KaitaiStruct _parent, ImportsParamsDefArrayUsertypeImported _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.hws = new ArrayList<HelloWorld>();
        for (int i = 0; i < 2; i++) {
            this.hws.add(new HelloWorld(this._io));
        }
        this.two = new ParamsDefArrayUsertypeImported(this._io, hws());
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.hws.size(); i++) {
            this.hws.get(((Number) (i)).intValue())._fetchInstances();
        }
        this.two._fetchInstances();
    }
    private List<HelloWorld> hws;
    private ParamsDefArrayUsertypeImported two;
    private ImportsParamsDefArrayUsertypeImported _root;
    private KaitaiStruct _parent;
    public List<HelloWorld> hws() { return hws; }
    public ParamsDefArrayUsertypeImported two() { return two; }
    public ImportsParamsDefArrayUsertypeImported _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
