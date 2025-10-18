// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class EnumToIClassBorder2 : KaitaiStruct
    {
        public EnumToIClassBorder2(EnumToIClassBorder1 p_parent, KaitaiStream p__io, KaitaiStruct p__parent = null, EnumToIClassBorder2 p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _parent = p_parent;
            f_isDog = false;
            _read();
        }
        private void _read()
        {
        }
        public bool IsDog
        {
            get
            {
                if (f_isDog)
                    return _isDog;
                f_isDog = true;
                _isDog = (bool) (((int) Parent.SomeDog) == 4);
                return _isDog;
            }
        }
        public EnumToIClassBorder1 Parent { get { return _parent; } }
        public EnumToIClassBorder2 M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private bool f_isDog;
        private bool _isDog;
        private EnumToIClassBorder1 _parent;
        private EnumToIClassBorder2 m_root;
        private KaitaiStruct m_parent;
    }
}
