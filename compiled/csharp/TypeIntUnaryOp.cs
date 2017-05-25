// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class TypeIntUnaryOp : KaitaiStruct
    {
        public static TypeIntUnaryOp FromFile(string fileName)
        {
            return new TypeIntUnaryOp(new KaitaiStream(fileName));
        }

        public TypeIntUnaryOp(KaitaiStream io, KaitaiStruct parent = null, TypeIntUnaryOp root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            f_unaryS2 = false;
            f_unaryS8 = false;
            _read();
        }
        private void _read() {
            _valueS2 = m_io.ReadS2le();
            _valueS8 = m_io.ReadS8le();
            }
        private bool f_unaryS2;
        private int _unaryS2;
        public int UnaryS2
        {
            get
            {
                if (f_unaryS2)
                    return _unaryS2;
                _unaryS2 = (int) (-(ValueS2));
                f_unaryS2 = true;
                return _unaryS2;
            }
        }
        private bool f_unaryS8;
        private long _unaryS8;
        public long UnaryS8
        {
            get
            {
                if (f_unaryS8)
                    return _unaryS8;
                _unaryS8 = (long) (-(ValueS8));
                f_unaryS8 = true;
                return _unaryS8;
            }
        }
        private short _valueS2;
        private long _valueS8;
        private TypeIntUnaryOp m_root;
        private KaitaiStruct m_parent;
        public short ValueS2 { get { return _valueS2; } }
        public long ValueS8 { get { return _valueS8; } }
        public TypeIntUnaryOp M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
