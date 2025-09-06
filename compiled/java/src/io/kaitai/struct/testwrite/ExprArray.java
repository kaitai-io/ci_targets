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
import java.util.Collections;
import java.util.List;

public class ExprArray extends KaitaiStruct.ReadWrite {
    public static ExprArray fromFile(String fileName) throws IOException {
        return new ExprArray(new ByteBufferKaitaiStream(fileName));
    }
    public ExprArray() {
        this(null, null, null);
    }

    public ExprArray(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprArray(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ExprArray(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ExprArray _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.aint = new ArrayList<Long>();
        for (int i = 0; i < 4; i++) {
            this.aint.add(this._io.readU4le());
        }
        this.afloat = new ArrayList<Double>();
        for (int i = 0; i < 3; i++) {
            this.afloat.add(this._io.readF8le());
        }
        this.astr = new ArrayList<String>();
        for (int i = 0; i < 3; i++) {
            this.astr.add(new String(this._io.readBytesTerm((byte) 0, false, true, true), StandardCharsets.UTF_8));
        }
        _dirty = false;
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.aint.size(); i++) {
        }
        for (int i = 0; i < this.afloat.size(); i++) {
        }
        for (int i = 0; i < this.astr.size(); i++) {
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        for (int i = 0; i < this.aint.size(); i++) {
            this._io.writeU4le(this.aint.get(((Number) (i)).intValue()));
        }
        for (int i = 0; i < this.afloat.size(); i++) {
            this._io.writeF8le(this.afloat.get(((Number) (i)).intValue()));
        }
        for (int i = 0; i < this.astr.size(); i++) {
            this._io.writeBytes((this.astr.get(((Number) (i)).intValue())).getBytes(Charset.forName("UTF-8")));
            this._io.writeU1(0);
        }
    }

    public void _check() {
        if (this.aint.size() != 4)
            throw new ConsistencyError("aint", this.aint.size(), 4);
        for (int i = 0; i < this.aint.size(); i++) {
        }
        if (this.afloat.size() != 3)
            throw new ConsistencyError("afloat", this.afloat.size(), 3);
        for (int i = 0; i < this.afloat.size(); i++) {
        }
        if (this.astr.size() != 3)
            throw new ConsistencyError("astr", this.astr.size(), 3);
        for (int i = 0; i < this.astr.size(); i++) {
            if (KaitaiStream.byteArrayIndexOf((this.astr.get(((Number) (i)).intValue())).getBytes(Charset.forName("UTF-8")), ((byte) 0)) != -1)
                throw new ConsistencyError("astr", KaitaiStream.byteArrayIndexOf((this.astr.get(((Number) (i)).intValue())).getBytes(Charset.forName("UTF-8")), ((byte) 0)), -1);
        }
        _dirty = false;
    }
    private Double afloatFirst;
    public Double afloatFirst() {
        if (this.afloatFirst != null)
            return this.afloatFirst;
        this.afloatFirst = ((Number) (afloat().get(0))).doubleValue();
        return this.afloatFirst;
    }
    public void _invalidateAfloatFirst() { this.afloatFirst = null; }
    private Double afloatLast;
    public Double afloatLast() {
        if (this.afloatLast != null)
            return this.afloatLast;
        this.afloatLast = ((Number) (afloat().get(afloat().size() - 1))).doubleValue();
        return this.afloatLast;
    }
    public void _invalidateAfloatLast() { this.afloatLast = null; }
    private Double afloatMax;
    public Double afloatMax() {
        if (this.afloatMax != null)
            return this.afloatMax;
        this.afloatMax = ((Number) (Collections.max(afloat()))).doubleValue();
        return this.afloatMax;
    }
    public void _invalidateAfloatMax() { this.afloatMax = null; }
    private Double afloatMin;
    public Double afloatMin() {
        if (this.afloatMin != null)
            return this.afloatMin;
        this.afloatMin = ((Number) (Collections.min(afloat()))).doubleValue();
        return this.afloatMin;
    }
    public void _invalidateAfloatMin() { this.afloatMin = null; }
    private Integer afloatSize;
    public Integer afloatSize() {
        if (this.afloatSize != null)
            return this.afloatSize;
        this.afloatSize = ((Number) (afloat().size())).intValue();
        return this.afloatSize;
    }
    public void _invalidateAfloatSize() { this.afloatSize = null; }
    private Long aintFirst;
    public Long aintFirst() {
        if (this.aintFirst != null)
            return this.aintFirst;
        this.aintFirst = ((Number) (aint().get(0))).longValue();
        return this.aintFirst;
    }
    public void _invalidateAintFirst() { this.aintFirst = null; }
    private Long aintLast;
    public Long aintLast() {
        if (this.aintLast != null)
            return this.aintLast;
        this.aintLast = ((Number) (aint().get(aint().size() - 1))).longValue();
        return this.aintLast;
    }
    public void _invalidateAintLast() { this.aintLast = null; }
    private Long aintMax;
    public Long aintMax() {
        if (this.aintMax != null)
            return this.aintMax;
        this.aintMax = ((Number) (Collections.max(aint()))).longValue();
        return this.aintMax;
    }
    public void _invalidateAintMax() { this.aintMax = null; }
    private Long aintMin;
    public Long aintMin() {
        if (this.aintMin != null)
            return this.aintMin;
        this.aintMin = ((Number) (Collections.min(aint()))).longValue();
        return this.aintMin;
    }
    public void _invalidateAintMin() { this.aintMin = null; }
    private Integer aintSize;
    public Integer aintSize() {
        if (this.aintSize != null)
            return this.aintSize;
        this.aintSize = ((Number) (aint().size())).intValue();
        return this.aintSize;
    }
    public void _invalidateAintSize() { this.aintSize = null; }
    private String astrFirst;
    public String astrFirst() {
        if (this.astrFirst != null)
            return this.astrFirst;
        this.astrFirst = astr().get(0);
        return this.astrFirst;
    }
    public void _invalidateAstrFirst() { this.astrFirst = null; }
    private String astrLast;
    public String astrLast() {
        if (this.astrLast != null)
            return this.astrLast;
        this.astrLast = astr().get(astr().size() - 1);
        return this.astrLast;
    }
    public void _invalidateAstrLast() { this.astrLast = null; }
    private String astrMax;
    public String astrMax() {
        if (this.astrMax != null)
            return this.astrMax;
        this.astrMax = Collections.max(astr());
        return this.astrMax;
    }
    public void _invalidateAstrMax() { this.astrMax = null; }
    private String astrMin;
    public String astrMin() {
        if (this.astrMin != null)
            return this.astrMin;
        this.astrMin = Collections.min(astr());
        return this.astrMin;
    }
    public void _invalidateAstrMin() { this.astrMin = null; }
    private Integer astrSize;
    public Integer astrSize() {
        if (this.astrSize != null)
            return this.astrSize;
        this.astrSize = ((Number) (astr().size())).intValue();
        return this.astrSize;
    }
    public void _invalidateAstrSize() { this.astrSize = null; }
    private List<Long> aint;
    private List<Double> afloat;
    private List<String> astr;
    private ExprArray _root;
    private KaitaiStruct.ReadWrite _parent;
    public List<Long> aint() { return aint; }
    public void setAint(List<Long> _v) { _dirty = true; aint = _v; }
    public List<Double> afloat() { return afloat; }
    public void setAfloat(List<Double> _v) { _dirty = true; afloat = _v; }
    public List<String> astr() { return astr; }
    public void setAstr(List<String> _v) { _dirty = true; astr = _v; }
    public ExprArray _root() { return _root; }
    public void set_root(ExprArray _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
