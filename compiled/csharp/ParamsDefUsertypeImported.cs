// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ParamsDefUsertypeImported : KaitaiStruct
    {
        public ParamsDefUsertypeImported(HelloWorld p_hwParam, KaitaiStream p__io, KaitaiStruct p__parent = null, ParamsDefUsertypeImported p__root = null) : base(p__io)
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
                _hwOne = (byte) (HwParam.One);
                return _hwOne;
            }
        }
        public HelloWorld HwParam { get { return _hwParam; } }
        public ParamsDefUsertypeImported M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private bool f_hwOne;
        private byte _hwOne;
        private HelloWorld _hwParam;
        private ParamsDefUsertypeImported m_root;
        private KaitaiStruct m_parent;
    }
}
