// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class CastToImported : KaitaiStruct
    {
        public CastToImported(KaitaiStruct p_hwParam, KaitaiStream p__io, KaitaiStruct p__parent = null, CastToImported p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _hwParam = p_hwParam;
            f_hwOne = false;
            _read();
        }
        private void _read()
        {
        }
        public byte HwOne
        {
            get
            {
                if (f_hwOne)
                    return _hwOne;
                f_hwOne = true;
                _hwOne = (byte) (((HelloWorld) (HwParam)).One);
                return _hwOne;
            }
        }
        public KaitaiStruct HwParam { get { return _hwParam; } }
        public CastToImported M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private bool f_hwOne;
        private byte _hwOne;
        private KaitaiStruct _hwParam;
        private CastToImported m_root;
        private KaitaiStruct m_parent;
    }
}
