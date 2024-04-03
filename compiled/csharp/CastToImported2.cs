// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class CastToImported2 : KaitaiStruct
    {
        public CastToImported2(KaitaiStruct p_hwParam, KaitaiStream p__io, KaitaiStruct p__parent = null, CastToImported2 p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _hwParam = p_hwParam;
            f_hw = false;
            _read();
        }
        private void _read()
        {
        }
        private bool f_hw;
        private HelloWorld _hw;
        public HelloWorld Hw
        {
            get
            {
                if (f_hw)
                    return _hw;
                _hw = (HelloWorld) (((HelloWorld) (HwParam)));
                f_hw = true;
                return _hw;
            }
        }
        private KaitaiStruct _hwParam;
        private CastToImported2 m_root;
        private KaitaiStruct m_parent;
        public KaitaiStruct HwParam { get { return _hwParam; } }
        public CastToImported2 M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
