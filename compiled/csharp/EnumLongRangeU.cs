// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class EnumLongRangeU : KaitaiStruct
    {
        public static EnumLongRangeU FromFile(string fileName)
        {
            return new EnumLongRangeU(new KaitaiStream(fileName));
        }


        public enum Constants
        {
            Zero = 0,
            IntMax = 4294967295,
            IntOverMax = 4294967296,
            LongMax = 9223372036854775807,
        }
        public EnumLongRangeU(KaitaiStream p__io, KaitaiStruct p__parent = null, EnumLongRangeU p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _f1 = ((Constants) m_io.ReadU8be());
            _f2 = ((Constants) m_io.ReadU8be());
            _f3 = ((Constants) m_io.ReadU8be());
            _f4 = ((Constants) m_io.ReadU8be());
        }
        private Constants _f1;
        private Constants _f2;
        private Constants _f3;
        private Constants _f4;
        private EnumLongRangeU m_root;
        private KaitaiStruct m_parent;
        public Constants F1 { get { return _f1; } }
        public Constants F2 { get { return _f2; } }
        public Constants F3 { get { return _f3; } }
        public Constants F4 { get { return _f4; } }
        public EnumLongRangeU M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
