// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System;
using System.Collections.Generic;
using System.Linq;

namespace Kaitai
{
    public partial class EofExceptionBytes : KaitaiStruct
    {
        public static EofExceptionBytes FromFile(string fileName)
        {
            return new EofExceptionBytes(new KaitaiStream(fileName));
        }

        public EofExceptionBytes(KaitaiStream io, KaitaiStruct parent = null, EofExceptionBytes root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _parse();
        }

        private void _parse()
        {
            _buf = m_io.ReadBytes(13);
        }
        private byte[] _buf;
        private EofExceptionBytes m_root;
        private KaitaiStruct m_parent;
        public byte[] Buf { get { return _buf; } }
        public EofExceptionBytes M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
