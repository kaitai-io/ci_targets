// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ParamsDefArrayUsertypeImported : KaitaiStruct
    {
        public ParamsDefArrayUsertypeImported(List<HelloWorld> p_hwsParam, KaitaiStream p__io, KaitaiStruct p__parent = null, ParamsDefArrayUsertypeImported p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _hwsParam = p_hwsParam;
            f_hw0One = false;
            f_hw1One = false;
            _read();
        }
        private void _read()
        {
        }
        private bool f_hw0One;
        private byte _hw0One;
        public byte Hw0One
        {
            get
            {
                if (f_hw0One)
                    return _hw0One;
                _hw0One = (byte) (HwsParam[0].One);
                f_hw0One = true;
                return _hw0One;
            }
        }
        private bool f_hw1One;
        private byte _hw1One;
        public byte Hw1One
        {
            get
            {
                if (f_hw1One)
                    return _hw1One;
                _hw1One = (byte) (HwsParam[1].One);
                f_hw1One = true;
                return _hw1One;
            }
        }
        private List<HelloWorld> _hwsParam;
        private ParamsDefArrayUsertypeImported m_root;
        private KaitaiStruct m_parent;
        public List<HelloWorld> HwsParam { get { return _hwsParam; } }
        public ParamsDefArrayUsertypeImported M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
